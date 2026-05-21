# DST Archival Privacy, Spot Report, and Cross-System Disclosure Standards

## 0. Purpose

This process document defines archival and disclosure standards for DST interaction logs, outside-system interface maps, spot reports, Pilot-profile inferences, correspondence archives, and distributed-system integration records.

Its purpose is practical self-management, not a guarantee of privacy, deletion, legal compliance, or downstream control.

The archive should help Pilots and authorized participants identify what information has been shared, inferred, exposed, redacted, held, anonymized, or routed for further review during DST-related system interaction.

The archive should also preserve mismatch and non-equivalence across distributed systems. When systems do not share the same categories, roles, privacy assumptions, warrant labels, profile boundaries, or data-retention behavior, those mismatches must be recorded rather than smoothed away.

## 1. Governing Posture

DST archiving should follow four principles.

First: public material can remain public.

If a term, project, corpus, link, public name, published document, public handle, website, or canon artifact has already been intentionally made public by the Pilot or by the relevant rights holder, it does not automatically need to be redacted merely because it is obscure. Publicly available references such as Lambda, NSAF, Lu Semita, ARGO, or public canon links may be preserved when they fall within the scope of the traversal.

Second: traversal-gained private information must be protected.

Information learned only because of the traversal, session, uploaded files, private interaction logs, connected tools, memory summaries, or system inference should not be treated as public unless the Pilot has expressly released it.

Third: profile inference is disclosure-sensitive even when it is not conventional PII.

A system may infer behavioral style, conceptual fingerprint, residue sensitivity, role preferences, correction patterns, project affiliations, writing habits, or intellectual orientation. These can identify a Pilot or reveal non-public information even when no email address, street address, or legal name appears.

Fourth: authority must be scoped honestly.

Participants may be given tools to inspect, flag, redact, anonymize, hold, or authorize sharing of information concerning them within the system’s ability limits. This must not be overstated as absolute control over data after it enters external systems, vendor infrastructure, logs, archives, recipients, screenshots, model memory, or downstream copies.

## 2. Key Definitions

### 2.1 Pilot

The Pilot is the user/operator as self-associating referent within a DST traversal: the steering participant who frames the traversal, receives outputs, detects residue, judges role drift, and re-associates results back into self/canon/process.

### 2.2 Participant

A participant is any human, agent, institution, system, or role-bearing entity whose information, outputs, decisions, identifiers, or inferred profile may appear in a traversal record.

### 2.3 Public Canon Material

Public canon material includes intentionally public documents, websites, repositories, published essays, public project names, public handles, public system descriptions, or shared framework terms that are already available outside the session.

Examples may include, if publicly linked or intentionally disclosed:

- Lambda;
- NSAF;
- TUFT;
- Lu Semita;
- ARGO;
- public GitHub repositories;
- public websites;
- public canon documents;
- public-facing framework descriptions.

Public canon material may still be sensitive by association. When in doubt, mark SHAREABLE_WITH_SCOPE_LIMITS rather than treating obscurity as privacy or publicity by itself.

### 2.4 Traversal-Gained Private Information

Traversal-gained private information is information that becomes available only through the traversal process, including:

- uploaded files not already public;
- private session logs;
- system memory summaries;
- connected-source content;
- inferred Pilot profiles;
- private names associated with non-public roles;
- private project details not included in public canon;
- third-party information appearing in emails, calendars, documents, or logs;
- non-public associations between a person and a project, role, account, location, or institution.

### 2.5 Direct PII

Direct PII includes information that can directly identify a person, such as:

- legal name;
- private alias tied to identity;
- email address;
- phone number;
- street address;
- precise location;
- account ID;
- government ID;
- payment identifier;
- private workplace identifier;
- private social profile;
- private contact details.

### 2.6 Quasi-PII

Quasi-PII is information that may identify a person when combined with other details, such as:

- obscure project names;
- rare vocabulary;
- timestamps;
- file names;
- device or platform information;
- connected-service references;
- writing style;
- unique intellectual corpus terms;
- role relationships;
- geographic or temporal context;
- repeated behavioral pattern.

### 2.7 Profile-Revealing Information

Profile-revealing information includes structural inferences about a Pilot or participant, including:

- reasoning style;
- residue sensitivity;
- correction habits;
- preferred output forms;
- role preferences;
- project priorities;
- epistemic posture;
- risk tolerance;
- conceptual fingerprints;
- repeated misunderstandings detected by the system;
- inferred cognitive/workflow style.

Profile-revealing information is not necessarily conventional PII, but it must be treated as disclosure-sensitive.

### 2.8 User-Directed Blacklisted Data Points

A user-directed blacklist is a set of data points that the Pilot or participant has instructed the system to protect, hold, redact, or not output without permission.

Examples:

- user name;
- legal name;
- private alias;
- email;
- phone;
- location;
- employer;
- private project association;
- family member names;
- non-public account handles;
- sensitive personal facts;
- any other explicitly named protected field.

If an inferred output approaches a blacklisted data point, the system should flag and hold it rather than output it.

## 3. Disclosure Categories

Every archive item, spot report, or export candidate should classify information into these categories.

### Category A — Public Canon / Publicly Released Material

Material already publicly released or publicly linked by the relevant rights holder.

Default status: SHAREABLE_WITH_SCOPE_LIMITS.

Review question: Does sharing this create a new association not already public?

### Category B — Session-Provided but Publicly Intended Material

Material the Pilot supplied during session and intends to use publicly, such as a public-facing essay, prompt, framework document, or query template.

Default status: PILOT_REVIEW_REQUIRED.

Review question: Did the Pilot explicitly authorize this version for external sharing?

### Category C — Session-Provided Private Material

Uploaded or pasted material not known to be public.

Default status: HOLD_PENDING_CONSENT.

Review question: Did the Pilot expressly release this material for the specific destination?

### Category D — Traversal-Gained Private Association

A relationship inferred or learned through traversal that connects a person, project, role, system, file, or account in a non-public way.

Default status: REDACTION_REQUIRED or HOLD_PENDING_CONSENT.

Review question: Was this association already public or expressly disclosed for this export?

### Category E — Direct PII

Direct identifiers.

Default status: REDACTION_REQUIRED.

Review question: Is there explicit participant permission to include this identifier?

### Category F — Quasi-PII / Correlation Metadata

Details that may identify by correlation.

Default status: PARTICIPANT_REVIEW_REQUIRED.

Review question: Could this identify the participant when combined with public corpus material or known project context?

### Category G — Profile-Revealing Inference

System-derived structural profile of a Pilot or participant.

Default status: PILOT_PRIVATE_REVIEW or ANONYMIZED_PILOT_DATA_ONLY.

Review question: Is this profile being used only to improve transfer, and has the Pilot had access to inspect it?

### Category H — Third-Party Identifiers

Information identifying another person or entity not acting as the current Pilot.

Default status: REDACTION_REQUIRED.

Review question: Does the Pilot have authority to share this third-party information? If not, hold or redact.

### Category I — System / Vendor / Platform Identifiers

Names of LLM systems, vendors, tools, connectors, or platforms.

Default status: SHAREABLE_WITH_SCOPE_LIMITS.

Review question: Does naming the platform reveal private connected-service use or account context?

### Category J — Connected-Source Content

Emails, calendar entries, drive files, private documents, code repositories, private logs, or connector-derived records.

Default status: DO_NOT_EXPORT unless explicitly authorized.

Review question: Did the content come from a connected private source, and have all participants with rights been considered?

### Category K — Blacklisted Data Point or Near-Match

Any direct, inferred, or near-output approach to a user-directed protected field.

Default status: DO_NOT_OUTPUT_WITHOUT_PERMISSION.

Review question: Is the system about to output something the Pilot explicitly directed it to protect?

## 4. Archive Status Labels

Use these labels for archive and sharing decisions.

- PILOT_PRIVATE_REVIEW: only the Pilot should review before any sharing.
- PARTICIPANT_REVIEW_REQUIRED: one or more participants should review.
- REDACTION_REQUIRED: remove or generalize before sharing.
- ANONYMIZED_PILOT_DATA_ONLY: retain structural traversal features while removing direct identifiers and unnecessary correlation markers.
- SHAREABLE_WITH_SCOPE_LIMITS: shareable only under the declared purpose, audience, and context.
- HOLD_PENDING_CONSENT: do not share until explicit consent is recorded.
- DO_NOT_EXPORT: do not include in external archive/export.
- EXTERNAL_GOVERNANCE_REQUIRED: requires legal, institutional, platform, or multi-party review.
- PUBLIC_CANON_OK: already public within the relevant canon scope; still check for new associations.
- BLACKLIST_NEAR_MATCH_HELD: output approaches a user-directed protected field and must be held until permission is gained.

## 5. Spot Report Standard

Each session archive or export bundle should generate a spot report.

### 5.1 Required Spot Report Fields

{
  "spot_report_id": "",
  "session_or_bundle_id": "",
  "report_scope": "SESSION | BUNDLE | EXPORT_CANDIDATE | ARCHIVE_ENTRY | HELD",
  "participants_detected": [],
  "participant_authority_scope": [],
  "public_canon_material_detected": [],
  "direct_pii_detected": [],
  "quasi_pii_detected": [],
  "third_party_identifiers_detected": [],
  "connected_source_content_detected": [],
  "profile_revealing_inferences": [],
  "pilot_profile_elements_detected": [],
  "role_revealing_information": [],
  "project_or_corpus_fingerprints": [],
  "dates_times_locations_or_platforms": [],
  "blacklisted_data_points_detected_or_approached": [],
  "sensitive_or_consent_bound_items": [],
  "recommended_redactions": [],
  "anonymization_candidates": [],
  "held_items": [],
  "safe_to_share_summary": "",
  "privacy_boundary_statement": "This report supports participant self-management of shared information within the system's ability limits. It is not a guarantee of privacy, deletion, downstream control, legal compliance, or external enforcement.",
  "recommended_status": "READY_FOR_PARTICIPANT_REVIEW | REDACTION_RECOMMENDED | HOLD_BEFORE_EXPORT | SAFE_WITH_SCOPE_LIMITS | HELD | DO_NOT_EXPORT"
}

### 5.2 Minimal Human-Readable Spot Report

A human-readable spot report should include:

1. What public/canon material appears.
2. What direct PII appears.
3. What quasi-PII or correlation markers appear.
4. What profile inferences appear.
5. What third-party information appears.
6. What blacklisted data points were detected or approached.
7. What should be redacted.
8. What may be anonymized.
9. What may be shared with scope limits.
10. What must be held.
11. What the system cannot guarantee.

## 6. Redaction Standard

### 6.1 Direct Redaction

Remove direct identifiers unless explicitly authorized.

Examples:

- "Ken Cade" -> "Pilot" or "REDACTED_NAME";
- private email -> "REDACTED_EMAIL";
- private phone -> "REDACTED_PHONE";
- exact location -> "REDACTED_LOCATION".

### 6.2 Generalization

Replace specific but non-essential details with category labels.

Examples:

- "Gmail, Google Calendar, Google Drive" -> "connected private services";
- "Claude Sonnet 4.6 on claude.ai" -> "external LLM system";
- exact date -> "SESSION_DATE_REDACTED";
- private file name -> "uploaded private file".

### 6.3 Public Canon Retention

Public framework terms may remain when their use is within the traversal scope.

Examples:

- Lambda;
- NSAF;
- TUFT;
- DST;
- ARGO;
- Lu Semita;
- public canon links.

However, if the archive connects those public terms to non-public private facts about a person, the association may need redaction even if the terms themselves are public.

### 6.4 Profile Compression

Profile-revealing content should be compressed or anonymized for external sharing.

Example:

Full profile:
"Pilot prefers formal/mathematical, software-operational, governance-oriented, anti-universalizing outputs and repeatedly corrects role drift."

Anonymized:
"Pilot profile indicates high sensitivity to scope, role distinction, and residue preservation. Specific behavioral details withheld."

### 6.5 Blacklist Handling

If the system detects or approaches a user-directed blacklisted data point, it should not output the protected value.

Instead, output:

"BLACKLIST_NEAR_MATCH_HELD: A protected data point may be implicated. Permission required before output."

The system should preserve enough internal note to support the Pilot’s review without exposing the protected data in public output.

## 7. Distributed-System Mismatch Categories

When multiple systems participate in the archive, record mismatches across all relevant categories.

### 7.1 Identity Model Mismatch

Systems may differ in whether they treat a participant as user, account, Pilot, operator, legal identity, pseudonym, session token, or anonymous actor.

Risk: a system may reveal a non-public identity association by translating one model into another.

### 7.2 Memory Model Mismatch

Systems may differ in whether they are stateless, session-stateful, memory-augmented, profile-building, log-retaining, or externally archived.

Risk: one system may assume forgetting while another persists.

### 7.3 Consent Model Mismatch

Systems may differ in how they record consent, infer consent, require consent, or allow revocation.

Risk: an export valid in one system may be unauthorized in another.

### 7.4 Role Model Mismatch

Systems may differ in how they distinguish Pilot, user, advisor, jury, traversal engine, governance agent, archivist, or external tool.

Risk: a role may be collapsed and authority misassigned.

### 7.5 Warrant Model Mismatch

Systems may differ in status labels, confidence scores, audit labels, proof standards, implementation success, or external validation criteria.

Risk: a low-warrant output may be promoted during translation.

### 7.6 Privacy Boundary Mismatch

Systems may differ in what they can inspect, redact, delete, hide, anonymize, or enforce downstream.

Risk: participant authority may be overstated.

### 7.7 Public/Private Boundary Mismatch

Systems may disagree about what is public, obscure-but-public, private, session-private, connector-private, or inferred.

Risk: public canon terms may be combined with private session facts.

### 7.8 Profile-Inference Mismatch

Systems may differ in whether they generate, store, expose, or use inferred profiles.

Risk: hidden profiling or unreviewed behavioral fingerprinting.

### 7.9 Third-Party Authority Mismatch

A Pilot may control their own disclosure but not the disclosure of another person’s identifying information.

Risk: private third-party data may be exported under mistaken authority.

### 7.10 Connected-Source Mismatch

Systems may differ in handling emails, calendars, drives, repositories, private APIs, or external databases.

Risk: private connector-derived data may leak into public archive.

### 7.11 Provenance Mismatch

Systems may differ in whether they preserve hashes, signatures, timestamps, version history, source links, or replayability.

Risk: archive entries may be treated as more grounded than they are.

### 7.12 Inference Boundary Mismatch

Systems may differ in whether inferred information is treated as data, hypothesis, profile, or residue.

Risk: a speculative inference may be treated as a known fact.

### 7.13 Externalization Mismatch

Systems may differ in what counts as publishing, deploying, sharing, exporting, sending, committing, or notifying.

Risk: a sandbox action may become a real-world external action unintentionally.

### 7.14 Deletion / Revocation Mismatch

Systems may differ in whether deletion removes content, hides content, marks content deleted, revokes access, or merely stops future display.

Risk: participants may believe data is gone when downstream copies persist.

### 7.15 Anonymization Mismatch

Systems may differ in what counts as anonymized, pseudonymous, aggregated, de-identified, or merely redacted.

Risk: structural fingerprints may re-identify a Pilot even after direct PII removal.

## 8. Pre-Session Disclosure Standard

A pre-session disclosure may define what the Pilot expressly releases, protects, or blacklists before the traversal begins.

Default pre-session disclosure should be conservative:

- No private PII released by default.
- Public canon material may be used within traversal scope.
- Private uploaded files remain private unless explicitly released.
- Connected-source content remains private unless explicitly released.
- Pilot-profile inferences remain private and inspectable unless anonymized release is authorized.
- User-directed blacklisted data points are held if detected or approached.

### 8.1 Pre-Session Disclosure Template

{
  "pilot_public_material_allowed": [],
  "pilot_private_material_allowed": [],
  "public_canon_terms_allowed": [],
  "blacklisted_data_points": [],
  "connected_sources_allowed": [],
  "profile_inference_allowed_for_alignment": true/false/"HELD",
  "profile_export_allowed": "NO | ANONYMIZED_ONLY | EXPLICIT_APPROVAL_REQUIRED | YES_WITH_SCOPE",
  "third_party_data_policy": "REDACT_BY_DEFAULT | HOLD_PENDING_CONSENT | ALLOW_IF_PUBLIC",
  "external_archive_policy": "NO_EXPORT | PILOT_REVIEW_REQUIRED | SHAREABLE_WITH_SCOPE_LIMITS",
  "notes": ""
}

## 9. Required Archive Workflow

### Step 1 — Intake

Record session scope, participants, systems, files, connected sources, public canon references, and declared blacklists.

### Step 2 — Classification

Classify all material into disclosure categories A through K.

### Step 3 — Mismatch Mapping

Identify distributed-system mismatches across identity, memory, consent, role, warrant, privacy, public/private boundary, profile inference, third-party authority, connected-source handling, provenance, inference boundary, externalization, deletion, and anonymization.

### Step 4 — Spot Report

Generate participant-facing spot report.

### Step 5 — Redaction / Anonymization

Apply recommended redactions, generalizations, or anonymization.

### Step 6 — Participant / Pilot Review

Route to Pilot and any other participant with authority over their own disclosed information.

### Step 7 — Status Assignment

Assign archive status label.

### Step 8 — Export / Hold / Archive

Export only after status supports export. Otherwise hold.

### Step 9 — Reopen Path

Preserve a path for participants to flag later exposure, correction, or reclassification, within the system’s ability limits.

## 10. Insertion-Ready Rules

### RULE ARCH-1 — Public Canon Is Not Private by Default

Publicly available canon terms, public project names, public links, and intentionally released framework material may be retained when relevant to traversal scope. However, new associations between public terms and non-public personal facts require review.

Failure mode prevented: over-redaction of public corpus material or under-redaction of private associations.

### RULE ARCH-2 — Traversal-Gained Private Information Is Protected by Default

Information learned only through the traversal, session logs, private uploads, connected sources, memory summaries, or system inference must be held unless expressly released by the Pilot or authorized participant.

Failure mode prevented: treating private traversal discoveries as public context.

### RULE ARCH-3 — Blacklisted Data Points Are Held on Near-Match

If an output approaches a user-directed blacklisted data point, the system must flag BLACKLIST_NEAR_MATCH_HELD and avoid outputting the protected value until permission is gained.

Failure mode prevented: accidental leakage through inference, completion, or near-identifier reconstruction.

### RULE ARCH-4 — Participant Authority Is Real but Scoped

Participants should have tools to inspect, flag, redact, anonymize, hold, or authorize sharing of information concerning them within the system’s ability limits. The system must not claim control over downstream copies or external systems beyond its boundary.

Failure mode prevented: false promise of absolute data control.

### RULE ARCH-5 — Third-Party Data Requires Separate Consent Basis

A Pilot’s authority over their own information does not authorize disclosure of another person’s non-public identifying information. Third-party identifiers must be redacted or held unless independently public or authorized.

Failure mode prevented: accidental disclosure of others through Pilot-controlled exports.

### RULE ARCH-6 — Profile Inference Is Inspectable and Disclosure-Sensitive

Any Pilot or participant profile inferred from outputs must be treated as structural, provisional, inspectable, and disclosure-sensitive. It may be used for transfer improvement only within declared privacy boundaries.

Failure mode prevented: hidden behavioral profiling or manipulative alignment.

### RULE ARCH-7 — Anonymization Must Address Structural Fingerprints

Removing names is not sufficient if the remaining text uniquely identifies a participant through project terms, style, rare vocabulary, timestamps, or role associations. Anonymization must reduce direct identifiers and unnecessary correlation markers.

Failure mode prevented: re-identification through quasi-PII or conceptual fingerprint.

### RULE ARCH-8 — Export Requires a Spot Report or Explicit Waiver

No session bundle, interaction log, interface map, or profile-bearing archive should be exported without either a spot report or an explicit Pilot waiver recorded in the archive.

Failure mode prevented: unreviewed leakage during cross-system integration.

### RULE ARCH-9 — System Ability Limits Must Be Disclaimed

Every privacy or redaction report must state the system’s ability limits. It may support self-management, but it must not guarantee deletion, secrecy, downstream enforcement, legal compliance, or control outside the declared boundary.

Failure mode prevented: overclaiming privacy guarantees.

### RULE ARCH-10 — Mismatches Are Archive Objects

Differences between systems’ identity, memory, consent, role, warrant, privacy, public/private, profile, third-party, provenance, externalization, deletion, or anonymization models must be recorded as first-class mismatch objects.

Failure mode prevented: silent loss of privacy or authority constraints during system translation.

## 11. Minimal Archive Entry Shape

{
  "archive_entry_id": "",
  "source_session_or_bundle": "",
  "systems_involved": [],
  "participants_detected": [],
  "public_canon_material": [],
  "private_traversal_material": [],
  "direct_pii_status": "NONE | PRESENT | REDACTED | HELD",
  "quasi_pii_status": "NONE | PRESENT | REDACTED | HELD",
  "profile_inference_status": "NONE | PRESENT | PILOT_REVIEW | ANONYMIZED | HELD",
  "third_party_status": "NONE | PRESENT | REDACTED | HELD",
  "blacklist_status": "NONE | NEAR_MATCH_HELD | REDACTED | PERMISSION_GRANTED",
  "mismatch_objects": [],
  "spot_report_id": "",
  "redaction_actions": [],
  "anonymization_actions": [],
  "participant_consents": [],
  "sharing_status": "PILOT_PRIVATE_REVIEW | PARTICIPANT_REVIEW_REQUIRED | REDACTION_REQUIRED | ANONYMIZED_PILOT_DATA_ONLY | SHAREABLE_WITH_SCOPE_LIMITS | HOLD_PENDING_CONSENT | DO_NOT_EXPORT | EXTERNAL_GOVERNANCE_REQUIRED | PUBLIC_CANON_OK",
  "privacy_boundary_statement": "This archive entry supports participant self-management of shared information within the system's ability limits. It is not a guarantee of privacy, deletion, downstream control, legal compliance, or external enforcement.",
  "reopen_conditions": []
}

## 12. Closing Standard

The archive should let a Pilot say:

This is what I knowingly shared.

This is what the system inferred.

This is what was public already.

This is what became sensitive only by association.

This is what should be redacted.

This is what may be anonymized.

This is what must be held.

This is what the system can help manage.

This is what the system cannot guarantee.

That is the correct standard: not false privacy certainty, but practical, scoped, inspectable self-management of traversal exposure.

