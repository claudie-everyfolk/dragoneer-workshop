# MD — Partner, General Counsel & Chief Compliance Officer

## Profile

- **Role:** Partner, General Counsel & Chief Compliance Officer
- **Function:** Legal / Compliance
- **Seniority:** C-suite
- **AI maturity:** **Low — gatekeeper, not a user.** MD is the compliance backstop. She doesn't use AI day-to-day; she decides whether the firm *can* use it.
- **Daily work:** RIA / SEC compliance, audit trails, model risk management, third-party vendor review
- **Inferred pain:** Vendor reviews are slow and ad hoc. Every new AI use case raises the same questions — data residency, prompt logging, audit trail, sub-processor risk, marketing rule exposure — and there is no consistent, defensible way to evaluate them at the pace the business wants.

## Session build

- **Exercise:** Vendor & workflow compliance review tool
- **Slug:** `00-vendor-compliance-review`
- **Complexity:** Medium
- **Estimated time:** 35–45 minutes
- **Premise:** Claude Code reads a fictional vendor profile, walks it through the firm's RIA AI-vendor checklist (cross-referenced with prior reviews and SEC guidance), and produces a risk-rated memo with an audit trail. MD reviews and signs — AI surfaces, she decides.

### Stretch goals

1. Have Claude produce the memo in two voices — internal compliance memo and a one-page IC-facing summary.
2. Add a "delta review" mode that compares the new vendor against the closest historical review in `prior-vendor-reviews.csv` and flags inconsistencies in how the firm has rated similar risks.
3. Generate a follow-up question list for the vendor — gaps in the vendor profile that must be closed before approval.

## Facilitator notes

- **Support level:** High-touch. Pair MD with a facilitator throughout. She'll move slowly and that's fine — she's pressure-testing whether AI can be governed.
- **Approach:** Frame the exercise as *AI doing the first pass, MD doing the decision*. Emphasize three things up front:
  1. The output is a **recommendation plus audit trail**, not a decision.
  2. The memo cites evidence from the source files — every claim is traceable.
  3. She controls the checklist. If she wants a new control added, she edits the markdown file and re-runs.
- **Data confidence:** All synthetic. Vendor names are fictional. The checklist mirrors the structure of a real RIA AI-vendor due diligence framework (data residency, prompt logging, audit trail, SOC 2, sub-processors, model risk, marketing rule) but the substance is illustrative.
- **Likely pushback:** "Can AI even do this responsibly?" The exercise itself is the answer — the deliverable forces Claude to cite evidence from the vendor profile and quote the checklist control it's evaluating. If a control can't be evaluated from the source data, the memo must say so explicitly rather than hallucinate.
- **Risks to watch:**
  - MD may want to debate the substance of the checklist instead of running the exercise. Redirect: "Use the checklist as-is for now; we can refine it after you see the output."
  - She may distrust the risk ratings. Good — have her override one and ask Claude to regenerate the memo with her override. That's the muscle we want her to build.
- **Finish-early move:** Run the stretch comparing the new vendor against the closest historical match in the CSV. That's where the "synthesize my chaos" value lands hardest for her.
