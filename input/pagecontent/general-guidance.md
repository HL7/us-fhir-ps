<style>
td, th {
   border: 1px solid black!important;
   max-width:500px;
   text-align: left;
}
</style>

### US-PCS Guidance 

The US-PCS [Bundle]() and [Composition]() profiles derive from guidance in [FHIR Clinical Documents (1.0.1)](https://hl7.org/fhir/uv/fhir-clinical-document/STU1.0.1/en/) and apply additional constraints relevant to the United States. These includes header information in the US-PCS Composition and the use of US Core clinical profiles when available. The US-PCS attempts to align with the [International Patient Summary (IPS) Implementation Guide (2.0.0)](https://hl7.org/fhir/uv/ips/STU2/) by using the same document code and sections as defined in the IPS. In addition, when a US Core profile is not available within a specific section, references to IPS clinical profiles are retained. Variances between US-PCS and IPS are documented in the ["US Variance to IPS"](./variance.html) portion of this guide. 

{% include img.html img="US-PCS-Relationships.png" caption="Figure 3: US-PCS Relationships to Other Guides"
    width="80%" %}

#### US Core Version 6.1.0

The US-PCS references clinical profiles from [US Core version 6.1.0](https://hl7.org/fhir/us/core/STU6.1/) that **SHALL** be the minimal version of US Core resource to send in the US-PCS. These profiles are required through US Core Data for Interoperability (USCDI) in 2026 and should be generally available by most US health information technology vendors and organizations. While possible to package resources from earlier US Core versions and remain conformant to the IPS specification, implementers **SHOULD NOT** declare conformance to US-PCS when using US Core versions before 6.1.0. In the event that resources conformant to a newer version of US Core are available, this guide recommends that implementers **SHOULD** send more recent versions. For example, a US-PCS document creator can include more recent versions such as [US Core 7.0.0](https://hl7.org/fhir/us/core/STU7/) or [US Core 8.0.1](https://hl7.org/fhir/us/core/STU8.0.1/) and still conform to this guide. The ["US Variance to IPS"](./variance.html)) portion of this guide compares the clincial profile from US Core 6.1.0 to the IPS 2.0.0 profiles, and consideration of IPS alignment is recommended when sending different US Core versions. 

<mark>**TBD: What to do with resources that don't fit in IPS section??**</mark>

#### Aligning US-PCS Sections with IPS and C-CDA

The US-PCS profiles 16 sections to align with the sections in the IPS Implementation Guide. The US-PCS, like the IPS and C-CDA documents, remains open at the section level, which means that additional sections may be added so long as they have different `Composition.section.code` coding. Like the IPS, the US-PCS only requires three section of Problems, Allergies and Medications. This provides the opportunity for concise summaries when appropriate, although implementers are encouraged to include all sections that are clinically relevant. For more guidance about what content should be included in IPS-aligned US-PCS sections, we refer readings to [IPS Guidance](https://hl7.org/fhir/uv/ips/Structure-of-the-International-Patient-Summary.html). 

The [Consolidated Clinical Document Architecture (C-CDA)](https://hl7.org/cda/us/ccda/) is a library of clinical documents in wide usage in the United States. The US-PCS is not intended to directly replace any of these documents, although it is most closely related to the [Continuity of Care Document (CCD)](https://hl7.org/cda/us/ccda/StructureDefinition-ContinuityofCareDocumentCCD.html). As published in 2007, the original CCD standard profiled 16 different sections although none were required. Over time through inclusion in the C-CDA standard, 6 of the CCD sections became required as CCD serves a primary mechanism to communicate information across US providers and health information technology.  A comparison of CCD sections (C-CDA 2.1) to the FHIR IPS (2.0) and US-PCS sections is shown below: 

|Section Name (LOINC code)|CCD Section Conformance (C-CDA 2.1)|IPS Section Recommendation (IPS 2.0)|US-PCS Recommendation|US Core Resources| 
|-----|-----|-----|-----|----|
|Problems (11450-4)|SHALL|Required|Required|[US Core Condition Problems and Health Concerns Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-problems-health-concerns.html)
|Allergies (48765-2)|SHALL|Required|Required|[US Core AllergyIntolerance Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-allergyintolerance.html)
|Medications (10160-0)|SHALL|Required|Required|[US Core MedicationRequest Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-medicationrequest.html)
|Results(30954-2)|SHALL|Recommended|Recommended|[US Core Laboratory Result Observation Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-lab.html)<br/>[US Core DiagnosticReport Profile for Laboratory Results Reporting](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-diagnosticreport-lab.html)<br/>[US Core Observation Clinical Result Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-clinical-result.html)
|Social History (29762-2)|SHALL|Optional|Recommended|[US Core Smoking Status Observation Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-smokingstatus.html)<br/>[US Core Simple Observation Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-simple-observation.html)
|Vital Signs (8716-3)|SHALL|Optional|Recommended|[US Core Blood Pressure Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-blood-pressure.html)<br/>[US Core Body Height Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-body-height.html)<br/>[US Core Body Weight Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-body-weight.html)<br/>[US Core Heart Rate Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-heart-rate.html)<br/>[US Core Respiratory Rate Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-respiratory-rate.html)<br/>[US Core Body Temperature Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-body-temperature.html)<br/>[US Core Pulse Oximetry Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-pulse-oximetry.html)<br/>[US Core Pediatric BMI for Age Observation Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-pediatric-bmi-for-age.html)<br/>[Pediatric Weight for Height Observation](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-pediatric-weight-for-height.html)<br/>[US Core Pediatric Head Occipital Frontal Circumference Percentile Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-head-occipital-frontal-circumference-percentile.html)
|Care Plan (18776-5)|SHOULD|Optional|Optional|[US Core CarePlan Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-careplan.html)
|Procedures (47519-4)|SHOULD|Recommended|Recommended|[US Core Procedure Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-procedure.html)
|Advance Directives (42348-3)|MAY|Optional|Optional|Not available in 6.1.0
|Encounters(46240-8)|MAY|Not Profiled|Not Profiled|[US Core Encounter Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-encounter.html)
|Family History (10157-6)|MAY|Not Profiled|Not Profiled|Not available in 6.1.0
|Functional Status (47420-5)|MAY|Optional|Optional|[US Core Condition Problems and Health Concerns Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-problems-health-concerns.html)<br/>Other profiles do not align with IPS (Observation, QuestionnaireResponse)
|Immunizations (11369-6)|MAY|Recommended|Recommended|[US Core Immunization Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-immunization.html)
|Medical Devices (46264-8)|MAY|Recommended|Recommended|Device Use not available in 6.1.0<br/>[US Core Implantable Device Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-implantable-device.html)
|Payers (48768-6)|MAY|Not Profiled|Not Profiled|[US Core Coverage Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-coverage.html)
|Mental Status (10190-7)|MAY|Not Profiled|Not Profiled|[US Core Simple Observation Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-simple-observation.html)<br/>[US Core Condition Problems and Health Concerns Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-problems-health-concerns.html)<br/>[US Core Observation Screening Assessment Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html)<br/>[US Core QuestionnaireResponse Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html)
|Nutrition (61144-2)|MAY|Not Profiled|Not Profiled|Not Profiled in 6.1.0
|Alerts (104605-1)|Not Profiled|Optional|Optional|Not Profiled in 6.1.0
|History of Past Problems (11348-0)|Not Profiled|Optional|Optional|[US Core Condition Problems and Health Concerns Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-problems-health-concerns.html)
|Patient Story (81338-6)|Not Profiled|Optional|Optional|[US Core Goal Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-goal.html)
|Pregnancy (10162-6)|Not Profiled|Optional|Optional|[US Core Observation Pregnancy Status Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-pregnancystatus.html)<br/>[US Core Observation Pregnancy Intent Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-pregnancyintent.html)

The US-PCS aligns with the IPS by only requiring three sections. Since there is a strong precedence of sending social history and vital sign sections in the United States, those two sections are added to the four recommended sections of the IPS. All other sections of the US-PCS remain aligned with the IPS. 

##### Additional Section in US-PCS  

The US-PCS aligns with the open-section slicing included in IPS, which also aligns with past precedence from C-CDA documents. This means that while 16 sections are profiled in this guide, other sections can be added to US-PCS to support care. While LOINC codes are not required for US-PCS sections, implementers **SHOULD** use LOINC codes aligned with the above table and [C-CDA sections](https://hl7.org/cda/us/ccda/artifacts.html#section-templates) when the section data match an existing definition of a section.  For example, a local code of "PAYERS" should not be used to define an US-PCS payers section since the code "48768-6" is available and used by C-CDA. 

#### Summary Creation

IPS outlines [two different methods](https://hl7.org/fhir/uv/ips/STU2/Generation-and-Data-Inclusion.html#generating--accessing-ips-documents) available for summary generation. These include a [`$summary`](https://hl7.org/fhir/uv/ips/STU2/OperationDefinition-summary.html) operation defined in the IPS guide as well as use of [`$docref` operation](https://hl7.org/fhir/uv/ipa/STU1.1/OperationDefinition-docref.html) as defined in the [International Patient Access (IPS) 1.1 guide](https://hl7.org/fhir/uv/ipa/STU1.1/).

This guide requires that US-PCS Document Creators **SHALL** be able to generate US-PCS documents using at least one of the following two options: 

1. Use of the [`$docref` operation](https://hl7.org/fhir/us/core/STU6.1/OperationDefinition-docref.html) from US Core where the `type` parameter specifies LOINC 60591-5 in reference to a patient summary. 

2. Use of the [`$summary` operation](https://hl7.org/fhir/uv/ips/STU2/OperationDefinition-summary.html) from IPS 2.0.0.

Since both of these operations are defined in other guides, they are not profiled in the US-PCS Implementation Guide. The [US Core `$docref` operation](https://hl7.org/fhir/us/core/STU6.1/OperationDefinition-docref.html) is strongly aligned with the [IPA `$docref` operation](https://hl7.org/fhir/uv/ipa/STU1.1/OperationDefinition-docref.html), so this approach strongly aligns US-PCS operations for summary generation with the IPS guide. For additional guidance on what data to include a US-PCS, please refer to definitions of [Must Support in US-PCS](./general-guidance.html#must-support-elements) as well as [US-PCS use cases](./use-case.html)

### Must Support Definition

The US-PCS both inherits Must Support flags from [FHIR Clinical Documents](https://hl7.org/fhir/uv/fhir-clinical-document/STU1.0.1/en/StructureDefinition-clinical-document-composition.html#guidance-on-composition-flags) and also assign Must Support in the profiles. 

The US-PCS definition of Must Support is aligned with the [FHIR US Core (6.1.0)](https://hl7.org/fhir/us/core/STU6.1/must-support.html) definition with adaptations to a document context:

The Profile elements consist of *Mandatory*, *Must Support*, and *USCDI Requirements* elements. The sections below defines the document creator and consumer expectations for processing these elements and illustrates how they are displayed and documented.

#### Mandatory Elements

*Mandatory* elements are elements with a minimum cardinality of 1 (min=1). When an element is Mandatory, the data is expected to always be present. Very rarely, it may not be, and guidance for when data is missing is provided in [Missing Data](https://hl7.org/fhir/us/core/STU6.1/general-requirements.html#missing-data). 

#### Must Support Elements

For generating a US-PCS, *Must Support* on any profile data element **SHALL** be interpreted as follows:

* US-PCS Document Creators **SHALL** be capable of populating all data elements as part of the document creation.
* US-PCS Document Consumers **SHALL** be capable of processing resource instances containing the data elements without generating an error or causing the application to fail. In other words, US-PCS Document Consumers **SHOULD** be capable of displaying the data elements for human use or storing it for other purposes.
* In situations where information on a particular data element is not present, and the reason for absence is unknown, Document Creators **SHALL NOT** include the data elements in the resource instance returned as part of document creation.
* US-PCS Document Consumers **SHALL** interpret missing data elements within resource instances as data not present in the US-PCS Document Creator's system.
* In situations where information on a particular data element is missing or suppressed, refer to the US Core guidance for [Missing Data](https://hl7.org/fhir/us/core/STU6.1/general-requirements.html#missing-data) and [Suppressed Data](https://hl7.org/fhir/us/core/STU6.1/general-guidance.html#suppressed-data). In cases where information on a specific data element is missing *and* the US-PCS Document Creator knows the precise reason for the absence of data (other than suppressed data), US-PCS Document Creators **SHOULD** send the reason for the missing information. This is done by following the same methodology outlined in the [Missing Data](https://hl7.org/fhir/us/core/STU6.1/general-requirements.html#missing-data) section but using the appropriate reason code instead of `unknown`.
* US-PCS Document Consumers **SHALL** be able to process resource instances containing data elements asserting missing information.

The terms *US-PCS Document Creator* and *US-PCS Document Consumer* when used in this guide share many similarities with [IPS Creator](https://hl7.org/fhir/uv/ips/ActorDefinition-Creator.html) and [IPS Consumer](https://hl7.org/fhir/uv/ips/ActorDefinition-Consumer.html) but should not be considered identical.


...