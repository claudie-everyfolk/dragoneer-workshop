# KC — LP Meeting Brief Generator

## Profile

- **Title:** Partner, Head of Business Development & Investor Relations
- **Function:** Investor Relations
- **Seniority:** C-suite
- **AI Maturity:** Low-Medium (uses ChatGPT/Claude for one-off drafting; hasn't worked with agents over real files)
- **Daily Work:** LP relationship management, fundraising communications, investor reporting
- **Inferred Pain:** Walking into LP meetings with fragmented context. The CRM has commitment data, a notes folder has prior conversations, the IR team has the latest portfolio updates, and KC's head holds the relationship history. Stitching it together before a 30-minute LP call eats hours — and the personalization that actually matters (their interests, their last open ask) is the first thing that gets cut when time runs short.

## Session Build

- **Exercise Name:** LP Pre-Meeting Brief Generator
- **Slug:** `lp-meeting-brief`
- **Complexity:** Medium
- **Estimated Time:** 35-45 minutes to first usable brief
- **Stretch Goals:**
  1. Generate briefs for ALL LPs in one pass (multi-LP batch)
  2. Add a "red flags" section that surfaces tension between portfolio news and LP sensitivities
  3. Produce a follow-up email draft alongside each brief, prefilled with promised items

## Facilitator Notes

- **Support Level:** Light check-ins. KC is senior and articulate about the pain — she will know if the output is wrong faster than the facilitator will. Plan to swing by twice: once after she pastes the prompt (confirm files attached cleanly), once when she has a draft brief (push her to iterate on tone/length, not structure).
- **Approach:** This is the participant most likely to say "this is exactly what my Sunday nights look like." Lean into that. The win is not a perfect brief — it's the realization that the synthesis step (which she does manually today) is the thing the agent removes.
- **Data Confidence:** All synthetic. LPs are composites (Maple Ridge Pension, Atlas Endowment, etc.). Portfolio companies are fictional. Safe to keep the output and reuse the prompt with real data after the workshop.
- **Risks:**
  - She may try to make the brief too long. Coach toward "one screen, scannable, includes the open promises" — that is the actual job.
  - She may want to skip the cross-reference step (LP interests × portfolio updates). That is the highest-value part of the exercise. Don't let her skip it.
- **Finish-Early Path:** Push her to the multi-LP stretch. Generating 4 briefs in one pass is the moment the agent stops being "a better ChatGPT" and starts being leverage.
