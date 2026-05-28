# Vendor Profile — Helios Research AI

**Submitted by:** Investment Team (Research)
**Proposed use case:** Portfolio company analysis — Helios ingests public filings, earnings transcripts, and the firm's internal research notes, then produces structured summaries and comparable-company analyses for analysts to use in IC memos.
**Requested pilot scope:** 6 analysts, 90-day pilot, ~200 portfolio companies in scope.
**Date submitted to Compliance:** Current quarter

---

## 1. Company overview

Helios Research AI is a Delaware C-corp founded in 2023. Series A. Headquartered in New York with engineering in Toronto. ~38 employees. Sells primarily to hedge funds, family offices, and middle-market private equity.

## 2. Product description

Helios is a web application and API. Users submit a portfolio company name; Helios retrieves public filings (10-K, 10-Q, 8-K), earnings call transcripts, and selected news, optionally augmented with documents the user uploads (internal research notes, deal memos). The system produces:

- A structured company summary (business model, segments, key drivers)
- A comparable-company table with sourced metrics
- A "thesis stress test" — bullet-pointed challenges to the user's stated investment thesis

Outputs include inline citations to the source documents. Users can export to Markdown, DOCX, or PDF.

## 3. Data flow and hosting

- Firm-uploaded documents and prompts are transmitted via TLS 1.3 to Helios's application tier hosted on AWS `us-east-1`.
- Firm data at rest is stored in AWS S3 with **AES-256 server-side encryption**. Helios manages the KMS keys.
- Helios uses **Anthropic Claude (Sonnet) and OpenAI GPT-4o** as the underlying foundation models, accessed via each provider's enterprise API. Helios states that both providers have "zero data retention" agreements in place for Helios's traffic.
- Vector embeddings of firm-uploaded documents are stored in a Helios-managed Pinecone index, segregated by customer via namespace.

## 4. Multi-tenancy and segregation

> "Each customer's documents and embeddings are isolated by a customer-scoped namespace. Production database rows include a `customer_id` foreign key enforced at the application layer."

No physical or VPC-level isolation between customers on the standard tier. An "Enterprise Isolation" SKU is available but not included in the proposed pricing.

## 5. Logging and audit trail

- Helios logs every prompt, every retrieved document, and every model response, tied to user email and timestamp.
- Logs are retained for **18 months** by default. Customers can request extended retention; pricing not yet specified.
- Logs are stored in CloudWatch and are **not write-once**; Helios engineering has administrative access.
- Customers can export their own logs via an admin dashboard in CSV format.

## 6. Model handling

- Helios commits in its standard MSA that "Helios will not use Customer Data to train or fine-tune any model."
- The MSA is silent on whether sub-processors (Anthropic, OpenAI) may use the data for "abuse monitoring" or "safety evaluation." Helios's sales team verbally indicated that Anthropic and OpenAI's enterprise terms prohibit training but permit short-term retention for abuse monitoring (~30 days).
- Model versions are pinned per customer. Helios commits to 30-day notice before changing a pinned model.

## 7. Sub-processors disclosed

| Sub-processor | Role | Region |
|---|---|---|
| AWS | Hosting, storage | US |
| Anthropic | Foundation model (Claude Sonnet) | US |
| OpenAI | Foundation model (GPT-4o) | US |
| Pinecone | Vector embeddings | US |
| Datadog | Application observability | US |
| Intercom | Customer support chat | US |

Notice of sub-processor changes: "commercially reasonable notice," term not defined.

## 8. Security posture

- **SOC 2 Type II** report dated 14 months ago. Type II refresh "in progress, expected this quarter."
- No ISO 27001 or HITRUST.
- Penetration test conducted 9 months ago by a third party; summary available under NDA.
- SSO via Okta and SAML supported. MFA required for all customer admin users.

## 9. Contract terms (from draft MSA)

- **Term:** 12 months, auto-renewing
- **Data return on termination:** Helios will delete Customer Data within 30 days of termination and "use commercially reasonable efforts" to remove data from backups within 90 days. Certification of destruction available on written request.
- **Indemnification:** Helios indemnifies for third-party IP claims arising from model outputs, capped at fees paid in the prior 12 months.
- **Cyber insurance:** $3M aggregate.
- **Governing law:** Delaware.

## 10. Open items flagged by vendor

- Enterprise Isolation SKU pricing not yet provided.
- Extended log retention pricing not yet provided.
- Updated SOC 2 Type II report not yet delivered.
