# Monthly Close Brief — Partner-Ready

I'm the CFO of an investment firm. Every month I close the books, and every month the same painful pattern repeats: spend data lives in one system, vendor invoices in another, capital call and distribution activity in a third, and I have a notebook of one-off context (audit fees that landed early, fund events, accruals I expect to reverse) that lives in my head. By the time I've reconciled it all into something the managing partner can read in five minutes, two days have passed.

I don't need you to do the arithmetic — our accounting system already does that and I will validate every number. What I need from you is the synthesis layer: read across the files, line up the categories, surface what matters, and write the narrative explaining *why* the numbers look the way they do. Think of yourself as my senior FP&A analyst, not my calculator.

The output should look like something I'd actually hand to a managing partner — clear, short, no padding, every claim tied back to the underlying data.

## The Ask

Using the attached sample data files — `monthly_spend_by_category.csv`, `vendor_invoices.csv`, `capital_activity.csv`, and `month_context.md` — build me a one-page **Monthly Close Brief** that includes:

1. **Spend vs. budget summary** — by GL category, with a clear flag (e.g. ⚠️) on any line where variance is greater than ±10% or greater than $25k in absolute terms. Use the numbers from the file as-is; do not recalculate.
2. **Top 3 variances explained** — for the three largest absolute variances, write a 1–2 sentence narrative explaining the variance, drawing on the context note where it explains the line.
3. **Vendor concentration notes** — which vendors drove the most spend this month, any invoices still pending or disputed, and any vendor whose monthly total looks out of line with their typical pattern (the context note flags some of these).
4. **Capital activity summary** — a clean recap of calls and distributions for the month: fund, action, date, amount, LP count. Surface anything unusual flagged in the context note.
5. **Open items for partner attention** — a short bulleted list of things that aren't resolved: disputed invoices, accruals to confirm, timing items that may reverse next month.

Format the whole thing as markdown. Keep it to roughly one page printed. Direct, scannable, no filler.

## Why This Matters

Right now I spend two days a month doing the stitching work this brief does. If I can run this on the third business day after month-end with my actual data, I get back to managing the firm instead of managing spreadsheets — and the partners get a faster, more consistent read on where we are.

## Iteration Hooks

- After the first draft, ask Claude to make it shorter and more direct — CFO voice, not analyst voice.
- Ask Claude to reorder the brief so the most partner-relevant section (probably variances + open items) is at the top.
- Ask Claude to add a one-line "headline" at the very top — the single sentence you'd say if the managing partner only read one line.

## Stretch Goals

- Add a **vendor concentration view**: top 5 vendors as a percentage of total monthly spend, with a flag if any single vendor crossed 15%.
- Have Claude draft a short **email to the managing partner** previewing the brief — three bullets, no attachments needed to understand it.
- Ask Claude to save the structure as a reusable template file (`close_brief_template.md`) so next month you can run the same exercise on next month's data with one prompt. *(Automation hook.)*
- Ask Claude to produce a **"what to ask the controller"** list — the 3–5 follow-up questions a sharp CFO would ask after reading this brief.
