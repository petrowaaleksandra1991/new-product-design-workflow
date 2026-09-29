# Content standard `RESEARCH.md`

Apply this standard when creating and substantially rewriting `RESEARCH.md`. It specifies the quality of reasoning and connections to solutions, but does not specify the same number of chapters or the same headings for all projects.

## Purpose of the result

`RESEARCH.md` is a designer-friendly document for making decisions. This is not a warehouse of links, not a retelling of studies one by one, and not a report for the sake of a report.

After reading it should be clear:

- what real problem and situation were studied;
- what was specified by the user and what was found in the data;
- which conclusions are supported and how directly;
- where the evidence is weak, adjacent or contradictory;
- what product opportunities follow from the conclusions;
- which ideas remain hypotheses or are chosen by the user despite insufficient evidence;
- what can be designed now and what still needs to be checked.

## Adaptive structure

Build your document around questions, problems, and upcoming decisions, rather than around a list of methods. Usually useful:

1. title, version, status and basis;
2. “The main thing in a minute”;
3. what was specified by the user and what was examined;
4. a short description of the method, coverage and limitations;
5. thematic chapters on main issues;
6. end-to-end synthesis of users, jobs, problems and context differences;
7. product possibilities and selected hypotheses;
8. what the research allows to solve and what it does not prove;
9. tasks for further verification;
10. sources and reproducibility.

Remove sections that are not applicable and add those that are necessary. Do not literally copy the structure of a reference study.

## “The main thing in a minute”

Start with a meaningful conclusion that changes the understanding of the problem. Then give 3-8 clarifications that are important for decisions. Each paragraph should express the principle, tension, or limitation found, rather than simply listing the topics of the search.

Complete the block with a boundary: what does this give to design and what has not yet been tested. Don't declare a future interface effective before testing it.

## Separating assertion origins

Explicitly at the beginning:

- `user input` - requirements, ideas, solutions and context submitted by the user;
- `product/internal evidence` - actual signals of a product or organization;
- `research evidence` - results of research and measurements;
- `implementation example` - documented mechanics of an existing product;
- `inference` - synthesis of several bases;
- `product hypothesis` - proposed opportunity or transfer to the project;
- `user-selected hypothesis` - an idea that the user decided to develop with a known risk.

Don't turn the user's words into a found fact. At the same time, don't lose them: show what question, idea or limitation the topic chapter answers.

## Thematic chapter template

For each decision-critical question, build a coherent chain:

1. **The user's original question or thought.** Quote briefly only if the wording is precise.
2. **Evidence.** Provide only materials that actually help answer the question.
3. **Evidence certificate next to the conclusion.** Indicate the type of study, sample, objective, context, date and availability of the full method when it affects credibility.
4. **Limit of Applicability** Explain immediately what the source did not measure and how its context differs from the product.
5. **Synthesis.** Formulate what follows from the totality of sources, including contradictions.
6. **Confidence.** Attribute your level of confidence to the quality and directness of the evidence, not the number of references.
7. **Product Implication.** Show a principle, opportunity, or testable hypothesis.
8. **Decision status.** Indicate whether the hypothesis is selected by the user, deferred, or requires additional evidence.

Place the disclaimer next to the statement it limits. Don't hide all restrictions at the end of the document.

## Statistics and accuracy

- For the number, indicate what exactly was counted, who participated, by what method and in what context.
- Don't turn sample size into evidence of applicability.
- Do not call self-report observable behavior; correlation - cause; preference - improvement of the result.
- Do not transfer the effect from another task, audience or platform without explicit reservation.
- Identify each source accurately as an abstract, preprint, case study, expert article, or experiment, as applicable.
- Correct detected numerical errors explicitly and check dependent conclusions.
- If a source confirms the presence of a feature, this does not confirm its convenience or value.

## Users, problems and JTBD

Don't start with a fictitious person. First, collect evidence about the situation:

- trigger and context;
- desired progress;
- current method and workaround;
- barriers and cost of the problem;
- criterion for a good result;
- differences between segments and situations;
- supporting, contradicting and missing evidence.

Formulate JTBD only for the cluster where the situation and progress are visible. Associate job with `evidence-id` and specify confidence. If there is no direct user research, label the result as `provisional JTBD` or `desk-research hypothesis`.

User story is a translation of an already justified need into the language of requirements, and not an independent proof. Don't create JTBDs and user stories just for the sake of filling out a template.

## Competitors and product examples

Distinguish:

- what the product can officially do;
- how the observed mechanics works;
- is there evidence of its use or effect;
- what part is permissible to transfer;
- why transfer might not work in our context.

The screen, flow, marketing promise and popularity of the product do not prove the quality of the solution. Use them as implementation examples and material for future pattern analysis.

## From research to design

The study may propose a design principle, an opportunity, several alternative product hypotheses, an expressive scenario point, a risk and a method for future testing.

Such sentences must come after the evidence and be clearly marked. They are not a ready-made screen architecture, a final flow, or a proven feature.

If the user selects a hypothesis when there is insufficient evidence, save:

```text
evidence-status: insufficient | adjacent | contradicted
decision-status: approved-for-design
validation-status: deferred
```

Indicate the limitation adopted, the reason for the decision, and the future method of verification.

## Final decision matrix

At the end, compare the plan questions and the result:

| Question/decision | What is supported | Confidence | What has not been proven | Next way to check |
|---|---|---|---|---|

Add a short list of checks for your next artifact or design. Frame them as observable questions, not as promised impact metrics.

## Sources and reproducibility

- Put `SOURCE-ID` next to the statement.
- In `SOURCE-REGISTER.md` save the direct URL/path, author or owner, type, date, method/selection, availability of the full text, what the source confirms and what it does not confirm.
- Several retellings of one primary material are not independent sources.
- Show the verification date and access restrictions.
- Do not copy long fragments of protected text; paraphrase and quote briefly.

## Language and editing

- Write in clear professional English by default, or in the language the user requests.
- Put the conclusion before the details, but keep the path to the evidence.
- Use the table for real comparison; coherent text - for reasons, limitations and synthesis.
- Remove repetitions, general words like “users want convenience” and decorative statistics.
- Do not create the appearance of confidence with the amount of text.
- Make the document readable by the designer, product and reviewer without deciphering technical terms.

## Iterations after feedback

If there is a significant user comment, do not add a random paragraph to the end. Reassemble the affected chains `question → evidence → limitation → conclusion → hypothesis`, check the associated numbers and solutions, then:

1. save the previous version in archive according to the version contract;
2. increase the version of the current `RESEARCH.md`;
3. write down what has changed and why;
4. mark the review of the previous version as not applicable to the new one;
5. resubmit the entire document to `in-review`.

## Final quality gate

Before sending, check:

- the main conclusion is clear without reading the entire document;
- user input is not presented as a research result;
- each important figure has a method, sample and boundary;
- limitations are located next to the conclusions;
- thematic chapters end with a consequence for the solution;
- JTBD and problems are traced to evidence;
- direct data, adjacent bases and product examples are not mixed;
- there is evidence against convenient hypotheses or it is clearly written that it was not found;
- user-selected hypotheses are saved at risk;
- it is clear what can be designed and what still needs to be checked;
- the structure is adapted to the task, and not copied from the example.
