# Artifacts

To support reproducibility, advance research into AI-generated software security, and adhere to artifact evaluation guidelines, we are making the artifacts associated with this study available to the research community.

Releasing the full corpus is neither practical nor appropriate: beyond its size, in the multi-gigabyte range, the raw responses contain the same candidate secrets and PII our measurements quantify. Instead, the artifacts provided for publication include:
* A random sample of the corpus, covering both frameworks and all three observable tiers, with host IP addresses stripped.
* Salted, non-reversible hash identifiers for every host in our classified tiers, allowing verification of tier membership and host counts without disclosing the underlying IP addresses.
* The complete set of regular expressions (regexes) and parsing logic we developed to detect both the objective builder fingerprints and the generalized vibe smells across the web corpus.
* The exact TruffleHog invocation and detector configuration used for our secret-scanning pipeline
* The LLM prompt, JSON output schema, and model commit hash used for the hydration-payload classification.
* The complete set of aggregate counts and rates underlying every figure and table in this paper, provided as CSV files.

These artifacts are submitted to facilitate artifact evaluation and to allow the community to validate our detection methodology, build upon our classification pipeline, and reproduce the conclusions presented in this work.
