# NM — Portfolio Change Detector

## Profile

- **Title:** Director of Research
- **Function:** Research
- **Seniority:** Senior IC
- **Inferred pain:** Manual labor to make ingested data queryable. Translating raw data into actionable intelligence. Surfacing what actually changed week-over-week across the portfolio so the partner team can focus on the few companies that need attention.
- **AI maturity:** Implicit — owns the data layer. Works with data daily, fluent in pipelines, schemas, and KPIs. May not be using Claude Code yet, but will pick it up quickly because the mental model maps cleanly onto how he already reasons about data.

## Session Build

- **Exercise:** Portfolio Change Detector
- **Slug:** `00-portfolio-diff`
- **Complexity:** Medium-Hard
- **Estimated time:** 35–45 minutes to first useful output
- **Stretches:**
  1. Wire it into a scheduled job that runs every Monday morning against fresh snapshots.
  2. Add an LLM-written commentary section per Investigate-flagged company that synthesizes the KPI delta + the matching event into a 2-sentence brief.
  3. Generalize the materiality thresholds into a config file so the partner team can tune sensitivity without touching prompts.

## Facilitator Notes

- **Support level:** Low. NM is self-directed and technical. Let him drive. Step in only if he's stuck on Claude Code mechanics, not on the substance of the problem.
- **Approach:** Start by having him read the three CSVs and the glossary into Claude Code and just ask "what changed?" Let him discover that without structure he gets noise. Then point him at the materiality thresholds in the glossary and watch the output sharpen.
- **Data confidence:** Synthetic. Cross-referenced — some KPI diffs are explained by events in the third CSV (e.g., headcount drops paired with departure events). He should notice this and use it as the basis for the explainability column.
- **Risks:** He may go too deep on data modeling and skip building the actual report. If 15 minutes in he's still reasoning about schemas, redirect to "just generate the report — we'll iterate on structure after."
- **Finish-early:** Push him to stretch #2 (LLM commentary per Investigate flag) — that's where the "translating data into intelligence" pain gets directly addressed.
