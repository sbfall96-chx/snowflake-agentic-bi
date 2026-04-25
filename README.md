# Snowflake-Native Agentic BI Platform
### Governed Multi-Agent Orchestration for Enterprise Data Intelligence

This repository documents the architecture and orchestration logic of an **Agentic Data Activation Layer** built natively on the Snowflake Data Cloud. 

## 🚀 The Vision
Most traditional "Text-to-SQL" applications suffer from hallucinations and a lack of enterprise context. This platform solves the "Last Mile" problem by using a **Federated Handshake** model—utilizing specialized AI agents to handle Discovery, Architecture, and Analysis within a single governed stream.

## 🛠️ The Tech Stack
*   **Data Warehouse:** [Snowflake](https://www.snowflake.com/)
*   **Orchestration Engine:** Multi-Step Reasoning Chains (Agentic)
*   **Compute:** [Snowpark for Python](https://www.snowflake.com/en/data-cloud/snowpark/) (Native execution, Zero Egress)
*   **AI Services:** [Snowflake Cortex](https://www.snowflake.com/en/data-cloud/cortex/) (LLM & Vector Search)
*   **Interface:** Streamlit / Python

## 🏗️ Federated Architecture
The platform coordinates three specialized agents governed by a central orchestration layer:

1.  **Research Agent:** Leverages **Cortex Search** and RAG to ingest unstructured internal discovery logs and external market earnings calls.
2.  **Architect Agent:** Analyzes Snowflake Information Schemas to autonomously recommend demo scenarios and PoC KPIs.
3.  **Analyst Agent:** Performs a **Metadata Handshake** to synthesize optimized, governed SQL queries (CTEs) without manual intervention.

## 🛡️ Governance & Security
*   **Zero Egress:** All LLM reasoning and RAG lookups stay within the Snowflake Trust Boundary.
*   **RBAC Enforcement:** Agent execution is tied to specific Snowflake User Roles for full auditability.
*   **Cortex Guard:** Integrated safety layer for PII filtering and enterprise-grade compliance.

## 📺 Technical Walkthrough
[WATCH THE LIVE DEMO HERE](https://youtu.be/qbo51lv8Q0s)

---
*Created by Jeff Edwards*
