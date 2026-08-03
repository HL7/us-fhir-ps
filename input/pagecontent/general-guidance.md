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

### US-PCS Guidance 

The US-PCS [Bundle](./StructureDefinition-Bundle-us-pcs.html) and [Composition](./StructureDefinition-Composition-us-pcs.html) profiles derive from guidance in [FHIR Clinical Documents (1.1.0)](https://hl7.org/fhir/uv/fhir-clinical-document/STU1.1/en/) and apply additional constraints relevant to the United States. These include header information in the US-PCS Composition and the use of US Core clinical profiles when available. The US-PCS attempts to align with the [International Patient Summary (IPS) Implementation Guide (2.0.0)](https://hl7.org/fhir/uv/ips/STU2/) by using the same document code and sections as defined in the IPS. In addition, when a US Core profile is not available within a specific section, references to IPS clinical profiles are retained. Variances between US-PCS and IPS are documented in the ["US Variance to IPS"](./variance.html) portion of this guide. 

{% include img.html img="US-PCS-Relationships.png" caption="Figure 3: US-PCS Relationships to Other Guides"
    width="80%" %}

#### US Core Version 6.1.0

§guidance-1: The US-PCS references clinical profiles from [US Core version 6.1.0](https://hl7.org/fhir/us/core/STU6.1/) that **SHALL** be the minimal version of US Core resource to send in the US-PCS.§ These profiles are required through US Core Data for Interoperability (USCDI) in 2026 and are generally available by most US health information technology vendors and organizations. §guidance-2: While possible to package resources from earlier US Core versions and remain conformant to the IPS specification, implementers **SHALL NOT** declare conformance to US-PCS when using US Core versions before 6.1.0.§ §guidance-3:In the event that resources conformant to a newer version of US Core are available, this guide recommends that implementers **SHOULD** send more recent versions.§ For example, a US-PCS document creator can include more recent versions such as [US Core 7.0.0](https://hl7.org/fhir/us/core/STU7/) or [US Core 8.0.1](https://hl7.org/fhir/us/core/STU8.0.1/) and still conform to this guide. Regardless of US Core version used, systems are not required to send any items in conflict with [Executive Order 14168](https://www.whitehouse.gov/presidential-actions/2025/01/defending-women-from-gender-ideology-extremism-and-restoring-biological-truth-to-the-federal-government/).

The ["US Variance to IPS"](./variance.html) portion of this guide compares the clinical profile from US Core 6.1.0 to the IPS 2.0.0 profiles, and consideration of IPS alignment is recommended when sending different US Core versions. 

#### Aligning US-PCS Sections with IPS, C-CDA and US Core

The US-PCS profiles 6 sections to align with the sections in the IPS Implementation Guide and adds a section on encounters not profiled in IPS. The US-PCS, like the IPS and C-CDA documents, remains open at the section level, which means that additional sections can be added so long as they have different `Composition.section.code` coding. Like the IPS, the US-PCS only requires a summary to have the three sections of Problems, Allergies and Medications. This enables systems to create concise summaries while allowing additional sections to be included when clinically relevant. For more guidance about what content can be included in IPS-aligned US-PCS sections, we refer readers to [Data Inclusion in Summary Documents](./general-guidance.html#data-inclusion-in-summary-documents) and [IPS Guidance](https://hl7.org/fhir/uv/ips/Structure-of-the-International-Patient-Summary.html). 

The [Consolidated Clinical Document Architecture (C-CDA)](https://hl7.org/cda/us/ccda/) is a library of clinical documents in wide usage in the United States. The US-PCS is not intended to directly replace any of these documents, although it most closely relates to the [Continuity of Care Document (CCD)](https://hl7.org/cda/us/ccda/StructureDefinition-ContinuityofCareDocumentCCD.html). As published in 2007, the original CCD standard profiled 16 different sections although none were required. Over time through inclusion in the C-CDA standard, 6 of the CCD sections became required as CCD serves a primary mechanism to communicate information across US providers and health information technology.  A comparison of CCD sections (C-CDA 2.1) to the FHIR IPS (2.0) and US-PCS sections is shown below with guidance about US Core profiles appropriate for each section: 

|Section Name (LOINC code)|CCD Section Conformance (C-CDA 2.1)|IPS Section Recommendation (IPS 2.0)|<span style="color: #00B0F0;">US-PCS Guidance ▼</span>|US Core Resources| 
|-----|-----|-----|-----|----|
|Allergies (48765-2)|SHALL¹|Required|**Required**|[US Core AllergyIntolerance Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-allergyintolerance.html)
|Medications (10160-0)|SHALL¹|Required|**Required**|[US Core MedicationRequest Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-medicationrequest.html)
|Problems (11450-4)|SHALL¹|Required|**Required**|[US Core Condition Problems and Health Concerns Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-problems-health-concerns.html)
|Encounters (46240-8)|MAY¹|Not Profiled|**Must Support**|[US Core Encounter Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-encounter.html)
|Immunizations (11369-6)|MAY¹|Recommended|**Must Support**|[US Core Immunization Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-immunization.html)
|Procedures (47519-4)|SHOULD¹|Recommended|**Must Support**|[US Core Procedure Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-procedure.html)
|Results (30954-2)|SHALL¹|Recommended|**Must Support**|[US Core Laboratory Result Observation Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-lab.html)<br/>[US Core Observation Clinical Result Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-clinical-result.html)<br/>[US Core DiagnosticReport Profile for Laboratory Results Reporting](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-diagnosticreport-lab.html)<br/>[US Core DiagnosticReport Profile for Report and Note Exchange](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-diagnosticreport-note.html)
|Advance Directives (42348-3)|MAY¹|Optional|Not Profiled|Not profiled in 6.1.0. See US Core 9.0.0 [Observation ADI Documentation](https://hl7.org/fhir/us/core/STU9/StructureDefinition-us-core-observation-adi-documentation.html) and [ADI DocumentReference](https://hl7.org/fhir/us/core/STU9/StructureDefinition-us-core-adi-documentreference.html) profiles
|Alerts (104605-1)|Not Profiled|Optional|Not Profiled|Not profiled in 6.1.0
|Care Plan (18776-5)|SHOULD¹|Optional|Not Profiled|[US Core CarePlan Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-careplan.html)
|Family History (10157-6)|MAY¹|Not Profiled|Not Profiled|Not profiled in 6.1.0
|Functional Status (47420-5)|MAY¹|Optional|Not Profiled|[US Core Condition Problems and Health Concerns Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-problems-health-concerns.html)<br/>Other profiles do not align with IPS (Observation, QuestionnaireResponse)
|History of Past Problems (11348-0)|Not Profiled|Optional|Not Profiled|[US Core Condition Problems and Health Concerns Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-problems-health-concerns.html)
|Medical Devices (46264-8)|MAY¹|Recommended|Not Profiled|Device Use not profiled in 6.1.0<br/>[US Core Implantable Device Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-implantable-device.html)
|Mental Status (10190-7)|MAY¹|Not Profiled|Not Profiled|[US Core Simple Observation Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-simple-observation.html)<br/>[US Core Condition Problems and Health Concerns Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-problems-health-concerns.html)<br/>[US Core Observation Screening Assessment Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html)<br/>[US Core QuestionnaireResponse Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)
|Nutrition (61144-2)|MAY¹|Not Profiled|Not Profiled|Not profiled in 6.1.0
|Patient Story (81338-6)|Not Profiled|Optional|Not Profiled|Any resource permitted
|Payers (48768-6)|MAY¹|Not Profiled|Not Profiled|[US Core Coverage Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-coverage.html)
|Pregnancy (10162-6)|Not Profiled|Optional|Not Profiled|[US Core Observation Pregnancy Status Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-pregnancystatus.html)<br/>[US Core Observation Pregnancy Intent Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-pregnancyintent.html)
|Social History (29762-2)|SHALL¹|Optional|Not Profiled|[US Core Smoking Status Observation Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-smokingstatus.html)<br/>[US Core Simple Observation Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-simple-observation.html)<br/>[US Core Observation Occupation Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-occupation.html)<br/>[US Core Observation Sexual Orientation Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-sexual-orientation.html)<br/>
|Vital Signs (8716-3)|SHALL¹|Optional|Not Profiled|[US Core Blood Pressure Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-blood-pressure.html)<br/>[US Core Body Height Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-body-height.html)<br/>[US Core Body Weight Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-body-weight.html)<br/>[US Core Heart Rate Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-heart-rate.html)<br/>[US Core Respiratory Rate Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-respiratory-rate.html)<br/>[US Core Body Temperature Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-body-temperature.html)<br/>[US Core Pulse Oximetry Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-pulse-oximetry.html)<br/>[US Core Pediatric BMI for Age Observation Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-pediatric-bmi-for-age.html)<br/>[Pediatric Weight for Height Observation](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-pediatric-weight-for-height.html)<br/>[US Core Pediatric Head Occipital Frontal Circumference Percentile Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-head-occipital-frontal-circumference-percentile.html)

¹=These are not conformance statements for US-PCS 

#### Summary Creation

##### Operations for US-PCS Generation

- §guidance-5: US-PCS Document Creators **SHALL** be able to generate US-PCS documents using the [$summary operation from IPS](https://hl7.org/fhir/uv/ips/STU2/OperationDefinition-summary.html) .§

IPS outlines two different methods available for summary generation. These include 1) a $summary operation defined in the IPS guide, and 2) a [$docref](https://hl7.org/fhir/us/core/OperationDefinition-docref.html) operation defined in both US Core and International Patient Access (IPA) 1.1. Although servers can support $docref for US-PCS retrieval, requiring document creators to support the IPS $summary operation ensures a common method will be available for all implementers.
For additional guidance on what data to include in a US-PCS, please refer to below, the definitions of [Must Support in US-PCS](./general-guidance.html#must-support-elements) as well as [US-PCS use cases](./use-case.html).

##### Data Inclusion in Summary Documents

The IPS international guides, both ISO 27269 and FHIR IPS Implementation Guide, do not provide detailed rules for generating a patient summary. The [use case for US-PCS](./use-case.html) remains aligned with these global guides with its intent to **provide a minimal, non-exhaustive summary that supports clinical decision-making at the point of care for both planned and unplanned care across organizational boundaries.**  The data relevant for clinical decision making will not always be the same and is subject to clinical judgment. Nevertheless, implementers have requested best practices for summary generation acknowledging many data are not relevant for patient care summaries. For the required and Must Support sections of the US-PCS, the following recommendations are provided for implementer consideration. 

<blockquote class="note-to-balloters">
	<p>We seek ballot and implementer feedback on these recommendations. The content of this section is still being developed and is subject to change based on further feedback and implementation experience. </p>
</blockquote>

###### Required Sections

| Section | Recommended Inclusion Criteria | Recommended Exclusion Criteria |
| :--- | :--- | :--- |
| **Problems** | `Condition.clinicalStatus` of `active`, `recurrence`, `relapse`, or `remission`. (Inactive or resolved problems can be included when clinically relevant.) | `Condition.verificationStatus` of `entered-in-error` |
| **Allergies** | `AllergyIntolerance.clinicalStatus` of `active`. (Inactive or resolved allergies can be included when clinically relevant.) | `AllergyIntolerance.verificationStatus` of `entered-in-error` |
| **Medications** | `MedicationRequest.status` of `active` and `MedicationRequest.intent` of `order` or `plan`. (Refer to [US Core Guidance for active medication lists](https://hl7.org/fhir/us/core/STU6.1/medication-list.html#get-all-active-medications).) | `MedicationRequest.doNotPerform` if `true` |

###### Must Support Sections

| Section | Recommended Inclusion Criteria | Recommended Exclusion Criteria |
| :--- | :--- | :--- |
| **Encounters** | All emergency room and inpatient encounters (past 12 months).<br>All ambulatory encounters (past 6 months). | `Encounter.status` of `cancelled` |
| **Immunizations** | Short-term immunity (e.g., flu, COVID) if `occurrenceDateTime` is in the past 24 months.<br>All other immunizations administered in lifetime of patient. | `Immunization.status` of `entered-in-error` |
| **Procedures** | Major procedures (e.g., bypass, bowel resection, implants, mastectomy, organ transplant) in lifetime of patient.<br>All other procedures (past 90 days). | `Procedure.status` of `entered-in-error` or `not-done` |
| **Results** | `DiagnosticReport` and corresponding `result` observations (past 90 days).<br>`Observation.category` of `laboratory` and `imaging` (past 90 days).<br>Abnormal clinical results when currently relevant from anytime in past. | `DiagnosticReport.status` or `Observation.status` of `entered-in-error` or `cancelled` |

Implementers can include additional sections as well when relevant to the US-PCS use case, although no specific content recommendations are provided for optional or additional sections. 

###### Additional Sections in US-PCS

Consistent with the IPS goal of being both "minimal and non-exhaustive" and "specialty-agnostic and condition-independent," US-PCS begins with a constrained set of sections and data elements that are expected to be relevant for most exchanges. At the same time, the open-section design allows additional sections and content to be included when they are clinically relevant and appropriate for a specific use case. This design aligns with IPS.

When including sections that are not profiled in this guide:
1. §guidance-6: Document Creators **SHOULD** include the logic for the inclusion, within each `Composition.section` using the [section-note extension](https://hl7.org/fhir/extensions/5.3.0/StructureDefinition-note.html).§
2. §guidance-7: Document Creators **SHALL** include only the sections, data elements, and resources needed to create a concise, clinically relevant patient summary.§
   - This guide does not provide a computable definition of clinical relevance, as relevance varies by care setting, exchange purpose, and use case. Whether additional sections are included depends on the purpose of the exchange, the clinician's judgment, and the patient's preferences.
3. §guidance-8: Document Creators **SHOULD** use the guidance and LOINC codes for content corresponding to an existing section definition in the [Aligning US-PCS Sections] table above.§
   - For example, to define a section for Payers, use the LOINC code 48768-6 (Payment sources Document) and US Core Coverage Profile documented in the table's "Payers" row.

### Authorship and Provenance in US-PCS

The author and custodian of a US-PCS document are required in US-PCS as detailed in the [US-PCS Composition](./StructureDefinition-Composition-us-pcs.html) profile. While not required in US-PCS, more information is often appropriate at a granular level, often through the use of [US Core Provenance](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-provenance.html) resources. This guide recommends implementers review [Basic Provenance from the US Core Implementation Guide](https://hl7.org/fhir/us/core/STU6.1/basic-provenance.html) for further guidance.

### Must Support Definition

<blockquote class="note-to-balloters">
	<p>We seek ballot and implementer feedback on the definition and approach to MustSupport flags within US-PCS. Specifically, we note that FHIR Clinical Documents IG includes MustSupport flags on many elements we inherit with a different definition than this guide. We seek feedback on if and how we should specify differences between inherited flags vs. the ones explicitly added as part of the US-PCS guidance.</p>
</blockquote>


The US-PCS inherits Must Support flags from [FHIR Clinical Documents](https://hl7.org/fhir/uv/fhir-clinical-document/STU1.1/en/StructureDefinition-clinical-document-composition.html#guidance-on-composition-flags) and assigns additional Must Support in the profiles. The US-PCS definition of Must Support is aligned with the [FHIR US Core (6.1.0)](https://hl7.org/fhir/us/core/STU6.1/must-support.html) definition with adaptations to a document context:

The Profile elements may be defined as *Mandatory* or *Must Support*. The sections below define the document creator and consumer expectations for processing these elements and illustrates how they are displayed and documented.

#### Mandatory Elements

*Mandatory* elements are elements with a minimum cardinality of 1 (min=1). When an element is Mandatory, the data is expected to always be present. Very rarely when unavailable, guidance for missing data is provided in [Missing Data](https://hl7.org/fhir/us/core/STU6.1/general-requirements.html#missing-data). 

#### Must Support Elements

For generating a US-PCS, *Must Support* on any profile data element is to be interpreted as follows:

* §guidance-9:US-PCS Document Creators **SHALL** be capable of populating all data elements as part of the document creation.§
* §guidance-10:US-PCS Document Consumers **SHALL** be capable of processing resource instances containing the data elements without generating an error or causing the application to fail. For example, some consumers will fully process and store the discrete resources while others will choose to display the text for human use.§
* §guidance-11:In situations where information on a particular data element is not present, and the reason for absence is unknown, Document Creators **SHALL NOT** include the data elements in the resource instances returned as part of document creation.§
* §guidance-12:US-PCS Document Consumers **SHALL** interpret missing data elements within resource instances as data not present in the US-PCS Document Creator's system.§
* §guidance-13:In situations where information on a particular data element is missing or suppressed, refer to the US Core guidance for [Missing Data](https://hl7.org/fhir/us/core/STU6.1/general-requirements.html#missing-data) and [Suppressed Data](https://hl7.org/fhir/us/core/STU6.1/general-guidance.html#suppressed-data). In cases where information on a specific data element is missing *and* the US-PCS Document Creator knows the precise reason for the absence of data (other than suppressed data), US-PCS Document Creators **SHOULD** send the reason for the missing information. This is done by following the same methodology outlined in the [Missing Data](https://hl7.org/fhir/us/core/STU6.1/general-requirements.html#missing-data) section but using the appropriate reason code instead of `unknown`.§
* §guidance-14:US-PCS Document Consumers **SHALL** be able to process resource instances containing data elements asserting missing information.§

#### Comparing Must Support between US-Core, IPS and US-PCS

As noted, the Must Support definition in US-PCS is aligned with US Core and is not the same as IPS definition of Must Support. The following table highlights major differences between US Core, IPS and US-PCS Must Support definitions: 

|| [US Core Definition]() | [IPS Definition]() | US-PCS Definition |
|:--- | :--- | :--- | :--- |
|Actors in Must Support| Only defined as part of MustSupport definition:<br/>-Responders<br/>-Requestors|Defined with Actor profiles and Obligations:<br/>- [Document Creator](https://hl7.org/fhir/uv/ips/STU2/ActorDefinition-Creator.html) and [Document Server](https://hl7.org/fhir/uv/ips/STU2/ActorDefinition-Server.html)<br/> -[Document Consumer](https://hl7.org/fhir/uv/ips/STU2/ActorDefinition-Consumer.html)<br/>|Only defined as part of MustSupport definition:<br/> -Document Creator<br/> -Document Consumer|
|Must Support Scope & Definitions|Does not use obligations, so flags universally mean: <br/>- **SHALL** be capable of populating¹ <br/> - **SHALL** process¹ <br/> - **SHALL NOT** send missing data when absence reason unknown¹ <br/>- **SHALL** interpret missing data as not present¹ <br/> - **SHOULD** send missing reason when known¹<br/>- **SHALL** process missing information assertions¹| MustSupport defined by use of obligations. Obligations vary strength and by element including:<br/>- **SHALL**:able-to-populate¹<br/>- **SHALL**:populate-if-known¹<br/>- **SHOULD**:populate-if-known¹<br/>- **SHALL**:handle¹<br/>- **SHOULD**:display¹|
|Source of Full Guidance|https://hl7.org/fhir/us/core/must-support.html|https://hl7.org/fhir/uv/ips/STU2/Must-Support-and-Obligations.html|Defined above in this guide

¹=These are conformance statements for other guides and not US-PCS

### Conformance

§§§