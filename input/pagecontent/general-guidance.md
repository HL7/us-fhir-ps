<style>
table {
  width: 100%
}

td, th {
   border: 1px solid black!important;
   max-width:500px;
   text-align: left;
}
</style>

The US-PCS [Bundle](./StructureDefinition-Bundle-us-pcs.html) and [Composition](./StructureDefinition-Composition-us-pcs.html) profiles derive from guidance in [FHIR Clinical Documents (1.1.0)](https://hl7.org/fhir/uv/fhir-clinical-document/STU1.1/en/) and apply additional constraints relevant to the United States. These include header information in the US-PCS Composition and the use of US Core clinical profiles when available. The US-PCS conforms to the [International Patient Summary (IPS) Implementation Guide (2.0.1)](https://hl7.org/fhir/uv/ips/STU2/) by using the same document code and sections as defined in the IPS. In addition, when a US Core profile is not available within a specific section, references to IPS clinical profiles are retained. Variances between US-PCS and IPS are documented in the ["US Variance to IPS"](./variance.html) portion of this guide. 

{% include img.html img="US-PCS-Relationships.png" caption="Figure 3: US-PCS Relationships to Other Guides"
    width="80%" %}

### US Core Versioning

§guidance-1: The US-PCS uses clinical profiles from [US Core version 6.1.0](https://hl7.org/fhir/us/core/STU6.1/) that **SHALL** be the minimal version of US Core resource to send in the US-PCS.§ These profiles are required through US Core Data for Interoperability (USCDI) in 2026 and are generally available by most US health information technology vendors and organizations. §guidance-2: While possible to package resources from earlier US Core versions and remain conformant to the IPS specification, implementers **SHALL NOT** declare conformance to US-PCS when using US Core versions before 6.1.0.§ §guidance-3:In the event that resources conformant to a newer version of US Core are available, this guide recommends that implementers **SHOULD** send more recent versions.§ For example, a US-PCS document creator can include more recent versions such as [US Core 9.0.0](https://hl7.org/fhir/us/core/STU9/) and still conform to this guide. 

The US Core profiles referenced by US-PCS have demonstrated a high degree of stability across successive [US Core](https://hl7.org/fhir/us/core/) releases, with most changes consisting of clarifications, terminology updates, or incremental enhancements rather than incompatible structural changes. As a result, resources conformant to newer US Core versions can generally be understood and processed in the context of US-PCS. Furthermore, because US-PCS is a document-based exchange specification that requires human-readable narrative in `Composition.section`, receivers can interpret clinical content from the narrative representation when automated processing of a specific FHIR resource is not supported. §guidance-4: Implementers **SHOULD** avoid mixing multiple US Core versions within data produced by a single EHR or source system whenever possible.§ However, receivers and intermediaries that aggregate data from multiple FHIR API endpoints may encounter and exchange resources conforming to different US Core versions, and such aggregation is permitted provided the resulting content remains clinically understandable and otherwise conforms to the requirements of this guide. 

Regardless of US Core version used, systems are not required to send any items in conflict with any applicable laws and regulations, which may vary by jurisdiction and over time.[^1] The ["US Variance to IPS"](./variance.html) portion of this guide compares the clinical profile from US Core 6.1.0 to the IPS 2.0.0 profiles, and consideration of IPS alignment is recommended when sending different US Core versions. 

[^1]: Consistent with Executive Order 14168 the Sex, Sexual Orientation, and Gender Identity, data elements have been removed from examples in this guide.

### Aligning US-PCS Sections with IPS, C-CDA and US Core

The US-PCS profiles 6 sections to align with the sections in the IPS Implementation Guide and adds a section on encounters not profiled in IPS. The US-PCS, like the IPS and C-CDA documents, remains open at the section level, which means that additional sections can be added so long as they have different `Composition.section.code` coding. Like the IPS, the US-PCS only requires a summary to have the three sections of Problems, Allergies and Medications. This enables systems to create concise summaries while allowing additional sections to be included when clinically relevant. For more guidance about what content can be included in IPS-aligned US-PCS sections, we refer readers to [Data Inclusion in Summary Documents](./general-guidance.html#data-inclusion-in-summary-documents) and [IPS Guidance](https://hl7.org/fhir/uv/ips/Structure-of-the-International-Patient-Summary.html). 

The [Consolidated Clinical Document Architecture (C-CDA)](https://hl7.org/cda/us/ccda/) is a library of clinical documents in wide usage in the United States. The US-PCS is **not** intended to replace any of these documents. A comparison of Continuity of Care Document (CCD) sections (from C-CDA 2.1) to IPS sections (from FHIR IPS 2.0) and US-PCS sections is shown below with guidance about US Core profiles appropriate for each section.

The following table includes a row for each section referenced in US-PCS, IPS or CCD. Each includes: 
1. The **Section Name** and corresponding LOINC code
1. The **CCD Conformance** which lists the conformance strength of that section as defined in C-CDA 2.1 CCD
1. The **IPS Recommendation** which lists the strength of the section as defined in the [IPS Structure](https://hl7.org/fhir/uv/ips/STU2/Structure-of-the-International-Patient-Summary.html) 
1. The <span style="color: #00B0F0;">**US-PCS Guidance**</span> which is the profiling specified in the [US-PCS Composition](./StructureDefinition-Composition-us-pcs.html)
1. Relevant **US Core Resources** (when available) for inclusion in each respective section   

|Section Name (LOINC)|CCD Conformance|IPS Recommendation|<span style="color: #00B0F0;">US-PCS Guidance ▼</span>|US Core Resources| 
|-----|-----|-----|-----|----|
|Allergies (48765-2)|SHALL[^2]|Required|**Required**|[US Core AllergyIntolerance Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-allergyintolerance.html)
|Medications (10160-0)|SHALL[^2]|Required|**Required**|[US Core MedicationRequest Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-medicationrequest.html)
|Problems (11450-4)|SHALL[^2]|Required|**Required**|[US Core Condition Problems and Health Concerns Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-condition-problems-health-concerns.html)
|Encounters (46240-8)|MAY[^2]|Not profiled in IPS|**Must Support**|[US Core Encounter Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-encounter.html)
|Immunizations (11369-6)|MAY[^2]|Recommended|**Must Support**|[US Core Immunization Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-immunization.html)
|Procedures (47519-4)|SHOULD[^2]|Recommended|**Must Support**|[US Core Procedure Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-procedure.html)
|Results (30954-2)|SHALL[^2]|Recommended|**Must Support**|[US Core Laboratory Result Observation Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html)<br/>[US Core Observation Clinical Result Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-clinical-result.html)<br/>[US Core DiagnosticReport Profile for Laboratory Results Reporting](https://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport-lab.html)<br/>[US Core DiagnosticReport Profile for Report and Note Exchange](https://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport-note.html)
|Advance Directives (42348-3)|MAY[^2]|Optional|Not profiled in US-PCS|Not profiled in US Core 6.1.0. See US Core 9.0.0 [Observation ADI Documentation](https://hl7.org/fhir/us/core/STU9/StructureDefinition-us-core-observation-adi-documentation.html) and [ADI DocumentReference](https://hl7.org/fhir/us/core/STU9/StructureDefinition-us-core-adi-documentreference.html) profiles
|Alerts (104605-1)|Not profiled in CCD|Optional|Not profiled in US-PCS|Not profiled in US Core 6.1.0
|Care Plan (18776-5)|SHOULD[^2]|Optional|Not profiled in US-PCS|[US Core CarePlan Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-careplan.html)
|Family History (10157-6)|MAY[^2]|Not profiled in IPS|Not profiled in US-PCS|Not profiled in US Core 6.1.0
|Functional Status (47420-5)|MAY[^2]|Optional|Not profiled in US-PCS|[US Core Condition Problems and Health Concerns Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-condition-problems-health-concerns.html)<br/>Other profiles do not match IPS expected resources (Observation, QuestionnaireResponse)
|History of Past Problems (11348-0)|Not profiled in CCD|Optional|Not profiled in US-PCS|[US Core Condition Problems and Health Concerns Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-condition-problems-health-concerns.html)
|Medical Devices (46264-8)|MAY[^2]|Recommended|Not profiled in US-PCS|Device Use not profiled in 6.1.0<br/>[US Core Implantable Device Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-implantable-device.html)
|Mental Status (10190-7)|MAY[^2]|Not profiled in IPS|Not profiled in US-PCS|[US Core Simple Observation Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-simple-observation.html)<br/>[US Core Condition Problems and Health Concerns Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-condition-problems-health-concerns.html)<br/>[US Core Observation Screening Assessment Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-screening-assessment.html)<br/>[US Core QuestionnaireResponse Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-questionnaireresponse.html)
|Nutrition (61144-2)|MAY[^2]|Not profiled in IPS|Not profiled in US-PCS|Not profiled in US Core 6.1.0
|Patient Story (81338-6)|Not profiled in CCD|Optional|Not profiled in US-PCS|Any resource permitted
|Payers (48768-6)|MAY[^2]|Not profiled in IPS|Not profiled in US-PCS|[US Core Coverage Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-coverage.html)
|Pregnancy (10162-6)|Not profiled in CCD|Optional|Not profiled in US-PCS|[US Core Observation Pregnancy Status Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-pregnancystatus.html)<br/>[US Core Observation Pregnancy Intent Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-pregnancyintent.html)
|Social History (29762-2)|SHALL[^2]|Optional|Not profiled in US-PCS|[US Core Smoking Status Observation Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-smokingstatus.html)<br/>[US Core Simple Observation Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-simple-observation.html)<br/>[US Core Observation Occupation Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-occupation.html)<br/>[US Core Observation Sexual Orientation Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-sexual-orientation.html)<br/>
|Vital Signs (8716-3)|SHALL[^2]|Optional|Not profiled in US-PCS|[US Core Blood Pressure Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-blood-pressure.html)<br/>[US Core Body Height Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-body-height.html)<br/>[US Core Body Weight Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-body-weight.html)<br/>[US Core Heart Rate Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-heart-rate.html)<br/>[US Core Respiratory Rate Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-respiratory-rate.html)<br/>[US Core Body Temperature Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-body-temperature.html)<br/>[US Core Pulse Oximetry Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-pulse-oximetry.html)<br/>[US Core Pediatric BMI for Age Observation Profile](https://hl7.org/fhir/us/core/StructureDefinition-pediatric-bmi-for-age.html)<br/>[Pediatric Weight for Height Observation](https://hl7.org/fhir/us/core/StructureDefinition-pediatric-weight-for-height.html)<br/>[US Core Pediatric Head Occipital Frontal Circumference Percentile Profile](https://hl7.org/fhir/us/core/StructureDefinition-head-occipital-frontal-circumference-percentile.html)

[^2]: These are not conformance statements for US-PCS (included in C-CDA 2.1 implementation guide)

### Entries within US-PCS Sections

For each US-PCS section, entry slicing is not limited to US Core profiles.§entries-1: In addition to the US Core profiles identified for a given section (see table above), other profiles based on the same FHIR resource type and/or DocumentReference resources **MAY** be included as section entries.§ This flexibility allows clinically relevant content to be exchanged when it cannot be represented using the preferred US Core profile or when the information is available only as a document rather than as discrete FHIR data. 

This approach is consistent with the design of the [International Patient Summary (IPS) Composition profile](https://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Composition-uv-ips.html), which uses open slicing for section entries and explicitly permits DocumentReference as an allowed entry type alongside section-specific structured resources. Accordingly, DocumentReference provides a mechanism for exchanging document-based clinical content while preserving the clinical intent of the section.§entries-2: While no content constraints (e.g., reference to a full document or a PDF of section information) are made on the referenced DocumentReference, these resources **SHOULD** be linked from the section where most applicable.§ This approach promotes alignment with IPS and supports progressive interoperability across diverse systems. 

In addition, as specified in the [FHIR Composition profile](https://hl7.org/fhir/R4/composition.html) and the [FHIR Clinical Documents Bundle profile](https://hl7.org/fhir/uv/fhir-clinical-document/en/StructureDefinition-clinical-document-bundle.html), all resources referenced directly from `Composition.section.entry` must be included in the Bundle. While secondary and tertiary references may be included in the Bundle when clinically relevant, often these data will be omitted. For example, the encounters sections is intended to include relevant visit history without having to include all associated clinical data with each encounter. Referencing encounters allows additional data to be found and more readily requested as explained in the [US-PCS use case](./use-case.html). See guidance on [Additional Sections and Data in US-PCS](./general-guidance.html#open-slicing-additional-sections-and-data-in-us-pcs) for further guidance. 

### Summary Creation

#### Operations for US-PCS Generation

- §guidance-5: US-PCS Document Creators **SHALL** be able to generate US-PCS documents using the [$summary operation from IPS](https://hl7.org/fhir/uv/ips/STU2/OperationDefinition-summary.html) .§

IPS outlines two different methods available for summary generation. These include 1) a $summary operation defined in the IPS guide, and 2) a [$docref](https://hl7.org/fhir/us/core/OperationDefinition-docref.html) operation defined in both US Core and International Patient Access (IPA) 1.1. Although servers can support $docref for US-PCS retrieval, requiring document creators to support the IPS $summary operation ensures a common method will be available for all implementers.

For additional guidance on what data to include in a US-PCS, please refer to below, the definitions of [Must Support in US-PCS](./general-guidance.html#must-support-elements) as well as [US-PCS use cases](./use-case.html).

#### Data Inclusion in Summary Documents

The IPS international guides, both ISO 27269 and FHIR IPS Implementation Guide, do not provide detailed rules for generating a patient summary. The [use case for US-PCS](./use-case.html) remains aligned with these global guides with its intent to **provide a minimal, non-exhaustive summary that supports clinical decision-making at the point of care for both planned and unplanned care across organizational boundaries.**  The data relevant for clinical decision making will not always be the same and is subject to clinical judgment. Nevertheless, implementers have requested best practices for summary generation acknowledging many data are not relevant for patient care summaries. For the required and Must Support sections of the US-PCS, the following recommendations are provided for implementer consideration, particularly when automated summary generation is employed. When a human authors a clinical summary, information relevant for care will diverge from the guidelines below. Implementers are not required to implement these recommendations and may apply their own logic for content recency and relevancy.  

<blockquote class="stu-note">
	<p>We seek continue implementer feedback on these recommendations. The content of this section is not definitive guidance and subject to change based on further feedback and implementation experience. </p>
</blockquote>

#### Required Sections

| Section | Recommended Inclusion Criteria | Recommended Exclusion Criteria |
| :--- | :--- | :--- |
| **Problems** | `Condition.clinicalStatus` of `active`, `recurrence`, `relapse`, or `remission`. (Inactive or resolved problems can be included when clinically relevant.) | `Condition.verificationStatus` of `entered-in-error` |
| **Allergies** | `AllergyIntolerance.clinicalStatus` of `active`. (Inactive or resolved allergies can be included when clinically relevant.) | `AllergyIntolerance.verificationStatus` of `entered-in-error` |
| **Medications** | `MedicationRequest.status` of `active` and `MedicationRequest.intent` of `order` or `plan`. (Refer to [US Core Guidance for active medication lists](https://hl7.org/fhir/us/core/medication-list.html#get-all-active-medications).) | `MedicationRequest.doNotPerform` if `true` |

#### Must Support Sections

| Section | Recommended Inclusion Criteria | Recommended Exclusion Criteria |
| :--- | :--- | :--- |
| **Encounters** | Encounters in past 18 months | `Encounter.status` of `cancelled` or `entered-in-error`|
| **Immunizations** | Short-term immunity (e.g., flu, COVID) if `occurrenceDateTime` is in the past 24 months.<br>All other immunizations administered in lifetime of patient. | `Immunization.status` of `entered-in-error` |
| **Procedures** | Major procedures (e.g., bypass, bowel resection, implants, mastectomy, organ transplant) in lifetime of patient.<br>All other procedures (past 90 days). | `Procedure.status` of `entered-in-error` or `not-done` |
| **Results** | `DiagnosticReport` and corresponding `result` observations (past 90 days).<br>`Observation.category` of `laboratory` and `imaging` (past 90 days).<br>Abnormal clinical results when currently relevant from anytime in past. | `DiagnosticReport.status` or `Observation.status` of `entered-in-error` or `cancelled` |

Implementers can include additional sections as well when relevant to the US-PCS use case, although no specific content recommendations are provided for optional or additional sections. 

#### Open Slicing, Additional Sections and Data in US-PCS

Consistent with the IPS goal of being both "minimal and non-exhaustive" and "specialty-agnostic and condition-independent," US-PCS begins with a constrained set of sections and data elements that are expected to be relevant for most exchanges. At the same time, the open-section design allows additional sections and content to be included when they are clinically relevant and appropriate for a specific use case. This design conforms with IPS.

When including sections that are not profiled in this guide:
1. §guidance-6: Document Creators **SHOULD** include the logic for the inclusion, within each `Composition.section` using the [section-note extension](https://hl7.org/fhir/extensions/5.3.0/StructureDefinition-note.html).§
2. §guidance-7: Document Creators **SHALL** include only the sections, data elements, and resources needed to create a concise, clinically relevant patient summary.§
   - This guide does not provide a computable definition of clinical relevance, as relevance varies by care setting, exchange purpose, and use case. Whether additional sections are included depends on the purpose of the exchange, the clinician's judgment, and the patient's preferences.
3. §guidance-8: Document Creators **SHOULD** use the guidance and LOINC codes for content corresponding to an existing section definition in the [Aligning US-PCS Sections](general-guidance.html#aligning-us-pcs-sections-with-ips-c-cda-and-us-core) table above.§
   - For example, to define a section for Payers, use the LOINC code 48768-6 (Payment sources Document) and US Core Coverage Profile documented in the table's "Payers" row.

### Authorship and Provenance in US-PCS

The author and custodian of a US-PCS document are required in US-PCS as detailed in the [US-PCS Composition](./StructureDefinition-Composition-us-pcs.html) profile. While not required in US-PCS, more information is often appropriate at a granular level, often through the use of [US Core Provenance](https://hl7.org/fhir/us/core/StructureDefinition-us-core-provenance.html) resources. This guide recommends implementers review [Basic Provenance from the US Core Implementation Guide](https://hl7.org/fhir/us/core/basic-provenance.html) for further guidance.

### Must Support Definition

The US-PCS inherits Must Support flags from [FHIR Clinical Documents](https://hl7.org/fhir/uv/fhir-clinical-document/STU1.1/en/StructureDefinition-clinical-document-composition.html#guidance-on-composition-flags) and assigns additional Must Support in the profiles. The US-PCS definition of Must Support is aligned with the [FHIR US Core](https://hl7.org/fhir/us/core/must-support.html) definition with adaptations to a document context:

The Profile elements may be defined as *Mandatory* or *Must Support*. The sections below define the document creator and consumer expectations for processing these elements and illustrates how they are displayed and documented.

#### Mandatory Elements

*Mandatory* elements are elements with a minimum cardinality of 1 (min=1). When an element is Mandatory, the data is expected to always be present. Very rarely when unavailable, guidance for missing data is provided in [Missing Data](https://hl7.org/fhir/us/core/general-requirements.html#missing-data). 

#### Must Support Elements

For generating a US-PCS, *Must Support* on any profile data element is to be interpreted as follows:

- §guidance-9:US-PCS Document Creators **SHALL** be capable of populating all data elements as part of the document creation.§
- §guidance-10:US-PCS Document Consumers **SHALL** be capable of processing resource instances containing the data elements without generating an error or causing the application to fail.§ For example, processing may range from choosing to display the text for human use or incorporate and store individual resources and data.  Any of level of processing chosen cannot cause the application to fail.
- When information on a particular data element is not present, and the reason for its absence is unknown, US Core Responders:
  - §guidance-11: **SHALL** populate mandatory elements (minimum cardinality > 0) according to the methodology in the Missing Data section.§
  - §guidance-12: **SHALL NOT** include elements with a minimum cardinality of 0 (including elements labeled Must Support) in the resource instance returned as part of the query results.§
- §guidance-13:When information on a specific data element is missing, and the the precise reason for the absence of data is known, US Core Responders **SHOULD** send the reason for the missing information.§ This is done by following the methodology in the [Missing Data section](https://hl7.org/fhir/us/core/general-requirements.html#missing-data), but using the appropriate reason code instead of unknown. For suppressed data, refer to the [Suppressed Data guidance](https://hl7.org/fhir/us/core/general-guidance.html#suppressed-data).
- When querying US Core Responders, US Core Requestors:
  - §guidance-14: **SHALL** interpret missing data elements within resource instances as data not present in the US Core Responder's system.§
  - §guidance-15: **SHALL** be able to process resource instances containing data elements asserting missing information.§

#### Comparing Must Support between US-Core, IPS and US-PCS

As noted, the Must Support definition in US-PCS is aligned with US Core and is not the same as IPS definition of Must Support. The following table highlights major differences between US Core, IPS and US-PCS Must Support definitions: 

|| [US Core Definition]() | [IPS Definition]() | US-PCS Definition |
|:--- | :--- | :--- | :--- |
|Actors in Must Support| Only defined as part of Must Support definition:<br/>- Responders<br/>- Requestors|Defined with Actor profiles and Obligations:<br/>- [Document Creator](https://hl7.org/fhir/uv/ips/STU2/ActorDefinition-Creator.html) and [Document Server](https://hl7.org/fhir/uv/ips/STU2/ActorDefinition-Server.html)<br/> - [Document Consumer](https://hl7.org/fhir/uv/ips/STU2/ActorDefinition-Consumer.html)<br/>|Only defined as part of Must Support definition:<br/> - Document Creator<br/> - Document Consumer|
|Must Support Scope & Definitions|Does not use obligations, so flags universally mean: <br/>- **SHALL** be capable of populating[^3] <br/> - **SHALL** process[^3] <br/>- **SHALL** populate mandatory elements[^3] <br/>- **SHALL NOT** send missing data with 0.. cardinality[^3] <br/>- **SHALL** interpret missing data as not present[^3] <br/> - **SHOULD** send missing reason when known[^3]<br/>- **SHALL** process missing information assertions[^3]| Must Support defined by use of obligations. Obligations vary strength and by element including:<br/>- **SHALL**:able-to-populate[^3]<br/>- **SHALL**:populate-if-known[^3]<br/>- **SHOULD**:populate-if-known[^3]<br/>- **SHALL**:handle[^3]<br/>- **SHOULD**:display[^3]|Meant to mirror US Core with "Document Creators" instead of "Responders" and "Document Consumers" rather than "Requestors"
|Source of Full Guidance|https://hl7.org/fhir/us/core/must-support.html|https://hl7.org/fhir/uv/ips/STU2/Must-Support-and-Obligations.html|Defined above in this guide

[^3]: These are not conformance statements for US-PCS (included in US Core or IPS implementation guides)

### Conformance

§§§
