# Skill contract

## Types

- The stage skill creates one main artifact and stops at the checkpoint.
- A methodical skill solves a narrow subtask within a stage and does not change the workflow status independently.
- The service skill reads the status or checks the workflow.

## Auto select

Staged and methodical skills are called up automatically based on clear requests and inputs. The user is not required to manage them. If two steps are equally likely and the choice changes the outcome, ask one meaningful question.

## Minimal context

The skill reads only the required inputs, associated solutions and necessary techniques. Don't download the entire project, all the sources, or all the skills "just in case."

Early stages use progressive disclosure: the stage `SKILL.md` follows the normal fast path, and detailed references are read only when their risk or complexity triggers apply. Automatically selecting a method does not mean loading all of its supporting files.

## Limitations

A skill does not confer permission to advance to the next stage, write to an external service, publish, or expand scope. Reviewers have read-only access. Record any exception.

## General quality methods

Methods are connected automatically within stages:

| Method | Problem | Where is it used |
|---|---|---|
| `render-wireframe-board` | Show multi-screen flow with one adaptive low-fi board | wireframes |
| `review-interface-copy` | Check actions, state copy, terminology, consequences and localization | architecture, wireframes, build, QA |
| `stress-test-states` | Check applicable state matrix, recovery, content and accessibility | wireframes, build, components, QA |

`INTERFACE-CRAFT-METHOD.md` is a supporting reference book, not the 40th skill. The wireframes, visual direction, exploratory screens and visual QA stages read their own section; the rest remains out of context. External UI references informed its development, but no upstream files or wording are copied into the reference book.

The overview board does not create a new stage. Its limit on the number of flows is about the readability of one board, not the product scope. Before formalizing the design system, stress-test states mainly on screens and flows.

## Third party extensions

The new skill, plugin, MCP, hook or script is not copied or installed automatically. Note before use:

1. original source, author, version/commit and destination;
2. license and permissibility of copying;
3. executable scripts/hooks and required dependencies;
4. access to files, network and data;
5. project-local or global scope;
6. intersection with existing skills;
7. safe fallback and small isolated test.

The absence of a license prohibits embedding other people's files into the portable workflow. The external tool remains an assistant, not a source of product truth.
