# LD — Monthly Close Brief

## Profile

- **Title:** Chief Financial Officer
- **Function:** Finance
- **Seniority:** C-suite
- **Inferred pain:** Reconciling data across many systems; closing the books faster; turning month-end into a partner-ready story instead of a spreadsheet pile.
- **AI maturity:** Low — has explored Chat/Claude casually; this is likely his first hands-on session with an AI agent that touches files.

## Session Build

- **Exercise:** Partner-Ready Monthly Close Brief
- **Slug:** `00-close-brief`
- **Complexity:** Medium
- **Est. time:** 35–45 minutes
- **Stretches:**
  1. Add a "vendor concentration" view — top 5 vendors as a % of total spend, flag anything that crossed a threshold this month.
  2. Generate a draft email to the managing partner with the 3 things he actually needs to know.
  3. Save the brief as a reusable template (`close_brief_template.md`) so next month is a one-prompt regeneration.

## Facilitator Notes

- **Support level:** Light-to-hands-on. He's a CFO with low AI maturity — expect a moment of "wait, it just read all three files?" Walk him through the first prompt run, then let him iterate.
- **Approach:** Frame Claude as a *synthesis layer*, not a calculation layer. Claude pulls, organizes, and explains. He validates. This framing matters — CFOs do not want an AI hallucinating numbers into a partner deck.
- **Data confidence:** All synthetic. Vendor names, GL codes, fund names are made up. Numbers are illustrative.
- **Risks:**
  - He may push Claude to recalculate variances or sum invoices. Redirect: "Let Claude *report* the numbers as they sit in the file, and explain *why* they look that way. Validate the math yourself."
  - Low AI maturity means he may type one sentence and expect magic. Show him the structured prompt in `prompt.md` and how the specificity drives quality.
- **Finish-early move:** Stretch goal #2 (draft email to managing partner). It's a natural extension and shows him the leverage of going from raw data → narrative → outbound comms in one tool.
