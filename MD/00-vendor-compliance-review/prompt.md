# Vendor compliance review — AI-assisted first pass

I'm the General Counsel and Chief Compliance Officer at a registered investment adviser. Every quarter, the business surfaces three to five new AI vendors they want to pilot — research copilots, portfolio analytics tools, document-review systems, meeting summarizers. Each one requires the same review: data residency, encryption, prompt logging, audit trail, sub-processor list, SOC 2, model risk, marketing rule exposure, books-and-records implications. My team is small. The reviews are slow and inconsistent, and the business doesn't always know why.

I do not want AI to make these decisions. I want AI to produce a defensible first pass — a memo that walks the checklist control-by-control, quotes evidence from the vendor's own materials, flags every gap, rates the risk, and shows its work so I can audit how it got there. The substance and the sign-off stay with me.

For this exercise, treat the four attached files as the complete record I have on a new vendor the investment team wants to onboard. Build me the tool I'd actually use.

## The ask

Using the attached sample data files — `ai-vendor-checklist.md`, `vendor-profile-helios.md`, `prior-vendor-reviews.csv`, and `regulatory-guidance.md` — build me a risk-rated vendor compliance memo that includes:

1. **Vendor summary** — one paragraph: who the vendor is, the proposed use case, the data flows, and what regulated activity it touches.
2. **Control-by-control assessment** — walk every control in `ai-vendor-checklist.md`. For each: the control text, the evidence from `vendor-profile-helios.md` (quoted, with the section it came from), an assessment of whether the control is Met / Partially Met / Not Met / Insufficient Information, and a one-sentence rationale.
3. **Risk rating** — an overall rating of **Low / Medium / High / Critical**, with a paragraph explaining the rating and which controls drove it. Cross-reference at least two prior reviews from `prior-vendor-reviews.csv` that involved a similar use case or risk category, and note whether this vendor's rating is consistent with how the firm has rated comparable vendors before.
4. **Red flags and conditions for approval** — a numbered list of red flags from the assessment, followed by a numbered list of specific conditions the vendor must satisfy before the firm proceeds (data processing addendum language, logging requirements, sub-processor notice, etc.). Each condition should map to a specific control and a specific regulatory citation from `regulatory-guidance.md` where applicable.
5. **Recommended next step** — one of: Approve with conditions / Conditional pilot with scope limits / Hold pending information / Decline. Justify it in two sentences.
6. **Audit trail** — at the bottom of the memo, an "AI Review Audit Trail" section that lists: every source file reviewed, every control evaluated, every gap where evidence was missing (so I know what the AI couldn't see), and every assumption the AI made (so I can challenge them). This is the part that lets me defend the use of AI in this workflow — do not skip it.

## Why this matters

The bottleneck isn't the decisions — it's the time it takes to get to a defensible draft I can edit. Today, a single vendor review takes a junior compliance associate one to two days. If a tool can produce a checklist-aligned, evidence-quoting first draft in minutes, my team spends their time on the controls that actually matter and the business stops waiting on us. The non-negotiable is the audit trail: if I can't defend how the recommendation was produced, the tool is useless to me.

## Iteration hooks

- If I override a risk rating (e.g., bump a "Medium" to "High"), I'll tell you why and ask you to regenerate the memo carrying that override through to the conditions and next-step recommendation.
- If the vendor profile is missing information for a control, I want the memo to say "Insufficient Information" and add the question to a follow-up list — not guess.
- I may swap out `ai-vendor-checklist.md` for a stricter version. The tool should work off whatever checklist file I hand it.

## Stretch goals

- Produce a second, one-page version of the memo suitable for the Investment Committee — plain language, no jargon, decision-focused.
- Add a "delta review" mode: given the new vendor and the prior reviews CSV, find the single closest historical review and flag any places where my firm's rating for this vendor would be inconsistent with how we rated the comparable one.
- Generate a numbered list of follow-up questions for the vendor — exactly the gaps in `vendor-profile-helios.md` that need to be closed before I'll sign off. Format it as something I can paste into an email.
- **Automation:** Set the tool up so I can drop a new vendor profile markdown file into the folder and re-run the same prompt — the memo regenerates against the current checklist, current prior-reviews CSV, and current regulatory guidance without any other changes.
