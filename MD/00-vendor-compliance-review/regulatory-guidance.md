# Regulatory Guidance — AI Vendor Use at a Registered Investment Adviser

**Internal compliance reference. Excerpts and paraphrases.**
This document is a working reference, not legal advice. Citations are to source rules and releases; quoted language is shortened for working purposes.

---

## 1. SEC Rule 206(4)-7 — Compliance Programs of Investment Advisers

Requires every registered investment adviser to adopt and implement written policies and procedures reasonably designed to prevent violations of the Advisers Act, and to review those policies at least annually for adequacy and effectiveness.

**Application to AI vendors:** Any AI tool that touches a regulated workflow (investment recommendations, communications with clients or prospects, books and records) is in scope of the firm's compliance program. The firm must be able to demonstrate that:

- The use case was assessed for regulatory exposure before deployment.
- Controls are documented and operating effectively.
- The use case is reviewed at least annually, and ad hoc upon any material change (model version, sub-processor, scope expansion).

## 2. SEC Rule 204-2 — Books and Records

Requires advisers to make and keep specified books and records, including records that "form the basis for or demonstrate the calculation of the performance or rate of return of all managed accounts," all written communications received and copies of communications sent relating to recommendations and advice, and required compliance records.

**Retention period:** Generally five years from the end of the fiscal year during which the last entry was made, with the first two years in an easily accessible place.

**Application to AI vendors:** Where AI outputs are used as the basis for an investment recommendation, an IC memo, or any client-facing communication, the prompt, the source documents retrieved, and the output are part of the books and records of the adviser. Vendors must support **five-year retention** of these logs and provide on-demand export.

## 3. SEC Marketing Rule — Rule 206(4)-1

Defines "advertisement" broadly and prohibits any advertisement that includes any untrue statement of material fact or that is otherwise materially misleading. Performance presentations are subject to specific requirements; testimonials and endorsements are conditioned on disclosure and oversight.

**Application to AI vendors:** Any AI tool whose outputs could be used in materials directed to investors, prospects, or the public — IR decks, LP letters, website copy, fund factsheets, social posts — creates marketing rule exposure. Required controls include:

- A documented human review of every AI-generated marketing output before distribution.
- Substantiation files for any factual or performance claim in the output.
- Pre-clearance of templates by Compliance.

## 4. SEC Risk Alert on Investment Adviser Use of AI (paraphrased)

Examiners have indicated that they will look for:

- Written policies addressing AI use, including approved use cases and prohibited use cases.
- Vendor due diligence files showing assessment of data residency, training-data use, logging, and model risk.
- Evidence of ongoing monitoring — not just at onboarding.
- Disclosures to clients where AI is "material" to the advisory service being provided.

## 5. FINRA Reg Notice 24-09 (paraphrased, applicable concepts)

While FINRA rules do not directly apply to a stand-alone RIA, FINRA's guidance on supervisory obligations for AI is a useful reference point: firms remain responsible for the outputs of third-party AI tools, including for accuracy, supervision, and recordkeeping. Outsourcing the function does not outsource the obligation.

## 6. Firm policy — internal

- **No firm data may be used to train, fine-tune, or evaluate a third-party model.** This must be in writing in the MSA. Verbal assurances from sales are not sufficient.
- **No MNPI may be processed by a multi-tenant AI vendor.** MNPI-adjacent use cases require physical or VPC-level isolated tenancy.
- **All AI outputs used in regulated activity must have a documented human-in-the-loop review** before the output is acted upon.
- **Five-year log retention is mandatory** for any vendor processing prompts or producing outputs related to regulated activity. Vendor inability to support five-year retention is a default-decline condition absent a written compensating control.
- **SOC 2 Type II report must be current within 12 months** at the time of contracting and refreshed annually thereafter. Stale SOC 2 is a Partially-Met-at-best finding.
