param([string]$WorkflowRoot = (Split-Path -Parent $PSScriptRoot))

$ErrorActionPreference = 'Stop'
$root = [System.IO.Path]::GetFullPath($WorkflowRoot)
$errors = [System.Collections.Generic.List[string]]::new()
$warnings = [System.Collections.Generic.List[string]]::new()

function Require-File([string]$RelativePath) {
    if (-not (Test-Path -LiteralPath (Join-Path $root $RelativePath))) { $errors.Add("Missing required file: $RelativePath") }
}

function Require-MaxBytes([string]$RelativePath, [int]$Limit) {
    $path = Join-Path $root $RelativePath
    if ((Test-Path -LiteralPath $path) -and (Get-Item -LiteralPath $path).Length -gt $Limit) {
        $errors.Add("Performance budget exceeded: $RelativePath is $((Get-Item -LiteralPath $path).Length) bytes; limit $Limit")
    }
}

$core = @(
 'AGENTS.md','WORKFLOW-GUIDE.md',
 'product-design\system\WORKFLOW-CONTRACT.md','product-design\system\ARTIFACT-CONTRACTS.md',
 'product-design\system\DATA-POLICY.md','product-design\system\GLOSSARY.md',
 'product-design\system\SKILL-CONTRACT.md','product-design\system\STARTER-CONTRACT.md',
 'product-design\system\EMERGING-SYSTEM-CONTRACT.md','product-design\system\REFERENCE-CONTRACT.md',
 'product-design\system\PROVIDER-ROUTING.md',
 'product-design\system\WORKFLOW-VERSION.md','.agents\roles\ROLE-CONTRACT.md',
 '.agents\skills\run-research\references\research-deliverable-standard.md',
 'product-design\acceptance\scenarios\research-quality-regression.md',
 'product-design\acceptance\scenarios\brief-context-regression.md',
 'product-design\acceptance\scenarios\wireframe-board-copy-states.md',
 'product-design\acceptance\scenarios\fast-early-stages.md',
 '.agents\skills\prepare-brief\references\deep-brief-checks.md',
 '.agents\skills\plan-research\references\deep-research-planning.md',
 'scripts\initialize-new-product.ps1'
)
foreach($f in $core){ Require-File $f }

Require-MaxBytes 'AGENTS.md' 12288
Require-MaxBytes '.agents\skills\prepare-brief\SKILL.md' 6144
Require-MaxBytes '.agents\skills\plan-research\SKILL.md' 8192

$stages = @('show-project-status','start-greenfield-product','prepare-brief','plan-research','run-research','review-research','analyze-patterns','draft-prd','design-screen-architecture','build-wireframes','review-wireframes','analyze-visual-references','define-visual-direction','build-exploratory-screens','nominate-components','formalize-design-system','review-patterns','review-visuals')
$methods = @('evaluate-sources','analyze-user-evidence','analyze-product-analytics','frame-outcomes-and-metrics','research-market-competitors','source-ux-patterns','evaluate-pattern-fit','compare-design-concepts','check-accessibility','run-screenshot-loop','check-data-egress','map-information-architecture','plan-usability-validation','synthesize-usability-results','inventory-supplied-assets','evaluate-ui-quality','trace-ux-to-ui','render-wireframe-board','review-interface-copy','stress-test-states')
$expected = @($stages + $methods)
$skillRoot = Join-Path $root '.agents\skills'
$seen = @{}
$discovery = 0

foreach($name in $expected){
    $file = Join-Path $skillRoot "$name\SKILL.md"
    if(-not (Test-Path -LiteralPath $file)){ $errors.Add("Missing skill: $name"); continue }
    $content = Get-Content -LiteralPath $file -Raw -Encoding UTF8
    if($content -notmatch '(?ms)^---\s*.*?^name:\s*([^\r\n]+).*?^description:\s*([^\r\n]+).*?^---'){
        $errors.Add("Invalid frontmatter: $name"); continue
    }
    $declared=$matches[1].Trim().Trim('"').Trim("'")
    $desc=$matches[2].Trim().Trim('"').Trim("'")
    $discovery += $declared.Length + $desc.Length
    if($declared -ne $name){ $errors.Add("Folder/name mismatch: $name declares $declared") }
    if($seen.ContainsKey($declared)){ $errors.Add("Duplicate skill name: $declared") } else { $seen[$declared]=$file }
    if($stages -contains $name){
        $yaml=Join-Path $skillRoot "$name\agents\openai.yaml"
        if(-not (Test-Path -LiteralPath $yaml)){ $errors.Add("Missing openai.yaml: $name") }
        else {
            $yc=Get-Content -LiteralPath $yaml -Raw -Encoding UTF8
            if($yc -notmatch 'allow_implicit_invocation:\s*true'){ $errors.Add("Implicit invocation disabled: $name") }
            if($yc -notmatch [regex]::Escape("`$$name")){ $errors.Add("default_prompt missing `$$name") }
        }
    }
}

$actual=@(Get-ChildItem -LiteralPath $skillRoot -Directory | Where-Object { Test-Path -LiteralPath (Join-Path $_.FullName 'SKILL.md') } | Select-Object -ExpandProperty Name)
foreach($name in $actual){ if($expected -notcontains $name){ $errors.Add("Unregistered active skill: $name") } }
$inactive=@(Get-ChildItem -LiteralPath $skillRoot -Directory | Where-Object { -not (Test-Path -LiteralPath (Join-Path $_.FullName 'SKILL.md')) } | Select-Object -ExpandProperty Name)
foreach($name in $inactive){ $errors.Add("Skill folder without SKILL.md: $name") }
if($discovery -gt 8000){ $errors.Add("Skill discovery budget exceeded: $discovery/8000") }

$roles=@('ROLE-CONTRACT.md','research-author.md','research-reviewer.md','pattern-analyst.md','pattern-reviewer.md','information-architect.md','wireframe-builder.md','wireframe-reviewer.md','visual-reference-analyst.md','exploratory-figma-builder.md','design-system-curator.md','visual-reviewer.md')
foreach($f in $roles){ Require-File ".agents\roles\$f" }
$obsoleteNested = Join-Path $root '.agents\.agents'
if(Test-Path -LiteralPath $obsoleteNested){
    $obsoleteFiles = @(Get-ChildItem -LiteralPath $obsoleteNested -Recurse -File -Force)
    if($obsoleteFiles.Count -gt 0){ $errors.Add("Obsolete nested .agents tree contains files: $($obsoleteFiles.Count)") }
}
$boardAssets=@('.agents\skills\render-wireframe-board\assets\board-template.html','.agents\skills\render-wireframe-board\assets\board.css')
foreach($f in $boardAssets){ Require-File $f }
$templates=@('PROJECT-STATUS.template.md','INPUTS.template.md','REFERENCE-MANIFEST.template.md','SOURCE-MANIFEST.template.md','SOURCE-REGISTER.template.md','PRODUCT-CONTEXT.template.md','DECISION-LOG.template.md','DATA-EGRESS-LOG.template.md','EMERGING-SYSTEM-STATUS.template.md')
foreach($f in $templates){ Require-File "product-design\templates\$f" }

$nonTemplates=Get-ChildItem -LiteralPath $root -Recurse -Force -File | Where-Object { $_.FullName -notmatch '\\templates\\' -and $_.Extension -in @('.md','.yaml','.yml') }
foreach($file in $nonTemplates){
    $content=Get-Content -LiteralPath $file.FullName -Raw -Encoding UTF8
    if($content -match '\b(TODO|TBD)\b|lorem ipsum'){ $errors.Add("Unfinished placeholder: $($file.FullName.Substring($root.Length+1))") }
}

[ordered]@{root=$root; expected_skills=$expected.Count; found_active_skills=$actual.Count; discovery_characters=$discovery; errors=$errors.Count; warnings=$warnings.Count} | ConvertTo-Json
foreach($w in $warnings){ Write-Warning $w }
foreach($e in $errors){ Write-Output "ERROR: $e" }
if($errors.Count -gt 0){ exit 1 }
