param(
    [string]$WorkflowRoot = (Split-Path -Parent $PSScriptRoot),
    [string]$ProductId = (Split-Path -Leaf (Split-Path -Parent $PSScriptRoot))
)

$ErrorActionPreference = 'Stop'
$root = [System.IO.Path]::GetFullPath($WorkflowRoot)
$pd = Join-Path $root 'product-design'
$templates = Join-Path $pd 'templates'

if (-not (Test-Path -LiteralPath (Join-Path $root 'WORKFLOW-GUIDE.md'))) {
    throw 'This folder is not a New Product Design Workflow copy.'
}

$safeId = ($ProductId.ToLowerInvariant() -replace '[^a-z0-9-]+','-' -replace '(^-+|-+$)','')
if ([string]::IsNullOrWhiteSpace($safeId)) { $safeId = 'new-product' }

$files = [ordered]@{
    'PROJECT-STATUS.template.md' = 'PROJECT-STATUS.md'
    'INPUTS.template.md' = 'INPUTS.md'
    'REFERENCE-MANIFEST.template.md' = 'REFERENCE-MANIFEST.md'
    'SOURCE-MANIFEST.template.md' = 'SOURCE-MANIFEST.md'
    'SOURCE-REGISTER.template.md' = 'SOURCE-REGISTER.md'
    'DECISION-LOG.template.md' = 'DECISION-LOG.md'
    'DATA-EGRESS-LOG.template.md' = 'DATA-EGRESS-LOG.md'
}

foreach ($pair in $files.GetEnumerator()) {
    $target = Join-Path $pd $pair.Value
    if (Test-Path -LiteralPath $target) { throw "Refusing to overwrite existing file: $target" }
    $content = (Get-Content -LiteralPath (Join-Path $templates $pair.Key) -Raw).Replace('<product-id>',$safeId)
    Set-Content -LiteralPath $target -Value $content -Encoding UTF8
}

$contextDir = Join-Path $pd 'context'
$systemDir = Join-Path $pd 'design-system'
$productDir = Join-Path $pd ("products\$safeId")
New-Item -ItemType Directory -Path $contextDir,$systemDir,$productDir -Force | Out-Null

$contextTarget = Join-Path $contextDir 'PRODUCT-CONTEXT.md'
$systemTarget = Join-Path $systemDir 'EMERGING-SYSTEM-STATUS.md'
if (Test-Path -LiteralPath $contextTarget) { throw "Refusing to overwrite existing file: $contextTarget" }
if (Test-Path -LiteralPath $systemTarget) { throw "Refusing to overwrite existing file: $systemTarget" }
Copy-Item -LiteralPath (Join-Path $templates 'PRODUCT-CONTEXT.template.md') -Destination $contextTarget
Copy-Item -LiteralPath (Join-Path $templates 'EMERGING-SYSTEM-STATUS.template.md') -Destination $systemTarget

[pscustomobject]@{ root=$root; product_id=$safeId; product_folder=$productDir; status='initialized' } | ConvertTo-Json
