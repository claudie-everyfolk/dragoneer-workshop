# RIA AI-Vendor Due Diligence Checklist

**Owner:** Office of the General Counsel & Chief Compliance Officer
**Version:** 4.2
**Last reviewed:** Q1
**Applies to:** Any third-party AI / ML system processing firm data, employee inputs, or producing outputs used in regulated activity (investment recommendations, marketing, client communications, books and records).

Every control must be assessed as **Met / Partially Met / Not Met / Insufficient Information**, with a quoted evidence citation from vendor materials.

---

## A. Data residency and handling

- **A1. Data residency.** Vendor confirms in writing the geographic location(s) where firm data is stored at rest and processed in transit. US-only preferred; EU-acceptable with DPA; other regions require sign-off.
- **A2. Encryption.** AES-256 at rest and TLS 1.2+ in transit. Key management documented; firm data not commingled with other tenants in plaintext.
- **A3. Data segregation.** Multi-tenant systems must isolate firm data logically. Vendor must describe segregation model.
- **A4. Data retention and deletion.** Vendor honors firm-defined retention schedule. Deletion verifiable on request, including from backups within a stated window.

## B. Prompt logging and audit trail

- **B1. Prompt and output logging.** Every prompt submitted and every output returned is logged with timestamp, user identity, and model version. Logs accessible to firm compliance on demand.
- **B2. Audit trail integrity.** Logs are tamper-evident or write-once. Vendor describes how integrity is maintained.
- **B3. Log retention.** Logs retained for a minimum of 5 years to align with SEC books-and-records requirements (Rule 204-2).
- **B4. Log export.** Firm can export logs in a structured format (CSV / JSON) on demand, without vendor gatekeeping.

## C. Model risk and governance

- **C1. Model documentation.** Vendor discloses the foundation model(s) used, version pinning practice, and notice policy for model changes.
- **C2. Training on firm data.** Vendor contractually prohibits use of firm prompts or outputs for model training, fine-tuning, or evaluation by the vendor or any third party.
- **C3. Hallucination and accuracy controls.** Vendor describes guardrails (RAG grounding, citation requirements, refusal behavior) appropriate to the use case.
- **C4. Human-in-the-loop.** Use case requires a documented human review step before any output is used in a regulated activity.

## D. Vendor and sub-processor risk

- **D1. SOC 2 Type II.** Current report available within the last 12 months. Material exceptions reviewed by GC.
- **D2. Sub-processor list.** Complete list of sub-processors disclosed in writing, with notice of changes at least 30 days before they take effect.
- **D3. Insurance and indemnification.** Cyber liability coverage of $5M minimum. Contract includes indemnification for data breach and IP infringement of model outputs.
- **D4. Termination and data return.** Contract permits termination for material compliance failure. Vendor returns or destroys firm data within 30 days and certifies destruction.

## E. Regulated-activity exposure

- **E1. Marketing rule.** If outputs may be used in client-facing materials, the use case is flagged for review under SEC Rule 206(4)-1 (marketing rule), including treatment of any performance language or testimonials.
- **E2. Books and records.** If outputs are used in investment decisions, client communications, or recommendations, they are captured under Rule 204-2 retention requirements.
- **E3. Investment adviser fiduciary scope.** Use case is assessed for whether AI outputs could be construed as investment advice; documented mitigations required if so.
- **E4. Custody and material non-public information.** Use case is assessed for any contact with MNPI; isolated tenancy and logging required if so.

---

## Risk rating rubric

- **Low** — All controls Met; use case is internal-only or non-regulated; no MNPI; standard vendor profile.
- **Medium** — One to three controls Partially Met with clear remediation path; no Critical regulatory exposure; conditional approval reasonable.
- **High** — Multiple Partially Met or any single Not Met in Sections B (logging), C2 (training prohibition), or E (regulated activity). Requires GC sign-off and documented conditions.
- **Critical** — Any Not Met in A1 (residency), B1 (logging), C2 (training prohibition), or D1 (SOC 2), OR direct MNPI exposure without isolation. Default decline absent compensating controls.
