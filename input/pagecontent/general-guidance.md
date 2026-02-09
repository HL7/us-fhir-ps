<style>
td, th {
   border: 1px solid black!important;
   max-width:500px;
   text-align: left;
}
</style>

### US-PCS Guidance 

The US-PCS [Bundle]() and [Composition]() profiles derive from guidance in [FHIR Clinical Documents (1.0.1)](https://hl7.org/fhir/uv/fhir-clinical-document/STU1.0.1/en/) and apply additional constraints relevant to the United States. These includes header information in the US-PCS Composition and the use of US Core clinical profiles when available. The US-PCS attempts to align with the [International Patient Summary (IPS) Implementation Guide (2.0.0)] by using the same document code and sections as defined in the IPS. In addition, when a US Core profile is not available within a specific section, references to IPS clinical profiles are retained. Variances between US-PCS and IPS are documented in the ["US Variance to IPS"](./us-variance-to-ips.html) portion of this guide. 

{% include img.html img="US-PCS-Relationships.png" caption="Figure 3: US-PCS Relationships to Other Guides"
    width="80%" %}

#### US Core Version 6.1.0

The US-PCS references clinical profiles from [US Core version 6.1.0](https://hl7.org/fhir/us/core/STU6.1-snapshot1/). These profiles are required through US Core Data for Interoperability (USCDI) in 2026 and should be generally available to most US health information technology vendors. In the event that only resources conformant to a different version of US Core are available, this guide recommends sending available resources rather than omitting information. Any reference to US Core resources **SHALL NOT** be considered a requirement to send resources conformant to a specific US Core version. For example, a US-PCS server can include more recent versions such as US Core 7.0.0, US Core 8.0.1 and still conform to this guide. The ["US Variance to IPS"](./us-variance-to-ips.html) portion of this guide compares the clincial profile from US Core 6.1.0 to the IPS 2.0.0 profiles, and consideration of IPS alignment is recommended when sending different US Core versions. 

**TBD: What to do with resources that don't fit in IPS section??**

#### Aligning US-PCS Sections with IPS and C-CDA

The US-PCS profiles 16 sections to align with the sections in the IPS Implementation Guide. The US-PCS, like the IPS and C-CDA documents, remains open at the section level, which means that additional sections may be added so long as they have different `Composition.section.code` coding. Like the IPS, the US-PCS only requires three section of Problems, Allergies and Medications. This provides the opportunity for concise summaries when appropriate, although implementers are encouraged to include all sections that are clinically relevant. For more guidance about what content should be included in IPS-aligned US-PCS sections, we refer readings to [IPS Guidance](https://hl7.org/fhir/uv/ips/Structure-of-the-International-Patient-Summary.html). 

The [Consolidated Clinical Document Architecture (C-CDA)](https://hl7.org/cda/us/ccda/) is a library of clincial documents in wide usage in the United States. The US-PCS is not intended to directly replace any of these documents, although it is most closely related to the [Continuity of Care Document (CCD)](https://hl7.org/cda/us/ccda/StructureDefinition-ContinuityofCareDocumentCCD.html). As published in 2007, the original CCD standard profiled 16 different sections although none were required. Over time through inclusion in the C-CDA standard, 6 of the CCD sections became required as CCD serves a primary mechanism to communicate information across US providers and health information technology.  A comparison of CCD sections (C-CDA 2.1) to the FHIR IPS (2.0) and US-PCS sections is shown below: 

|Section Name (LOINC code)|CCD Section Conformance (C-CDA 2.1)|IPS Section Recommendation (IPS 2.0)|US-PCS Recommendation| 
|-----|-----|-----|-----|
|Problems (11450-4)|SHALL|Required|Required|
|Allergies (48765-2)|SHALL|Required|Required|
|Medications (10160-0)|SHALL|Required|Required|
|Results(30954-2)|SHALL|Recommended|Recommended|
|Social History (29762-2)|SHALL|Optional|Recommended|
|Vital Signs (8716-3)|SHALL|Optional|Recommended|
|Care Plan (18776-5)|SHOULD|Optional|Optional|
|Procedures (47519-4)|SHOULD|Recommended|Recommended|
|Advance Directives (42348-3)|MAY|Optional|Optional|
|Encounters(46240-8)|MAY|Not Profiled|Not Profiled|
|Family History (10157-6)|MAY|Not Profiled|Not Profiled|
|Functional Status (47420-5)|MAY|Optional|Optional|
|Immunizations (11369-6)|MAY|Recommended|Recommended|
|Medical Devices (46264-8)|MAY|Recommended|Recommended|
|Payers (48768-6)|MAY|Not Profiled|Not Profiled|
|Mental Status (10190-7)|MAY|Not Profiled|Not Profiled|
|Nutrition (61144-2)|MAY|Not Profiled|Not Profiled|
|Alerts (104605-1)|Not Profiled|Optional|Optional|
|History of Past Problems (11348-0)|Not Profiled|Optional|Optional|
|Patient Story (81338-6)|Not Profiled|Optional|Optional|
|Pregnancy (10162-6)|Not Profiled|Optional|Optional|

The US-PCS aligns with the IPS by only requiring three sections. Since there is a strong precedence of sending social history and vital sign sections in the United States, those two sections are added to the four recommended sections of the IPS. All other sections of the US-PCS remain aligned with the IPS. 

#### Summary Creation

TBD

### Must Support Definition

The US-PCS both inherits Must Support flags from [FHIR Clinical Documents](https://hl7.org/fhir/uv/fhir-clinical-document/STU1.0.1/en/StructureDefinition-clinical-document-composition.html#guidance-on-composition-flags) and also assign Must Support in the profiles. 

The US-PCS definition of Must Support is aligned with the [FHIR US Core (6.1.0)](https://hl7.org/fhir/us/core/STU6.1-snapshot1/must-support.html) defintion with adapations to a document context:

The Profile elements consist of *Mandatory*, *Must Support*, and *USCDI Requirements* elements. The sections below defines the document creator and consumer expectations for processing these elements and illustrates how they are displayed and documented.

#### Mandatory Elements

*Mandatory* elements are elements with a minimum cardinality of 1 (min=1). When an element is Mandatory, the data is expected to always be present. Very rarely, it may not be, and guidance for when data is missing is provided in the [Missing Data section](). 

#### Must Support Elements

For generating a US-PCS, *Must Support* on any profile data element **SHALL** be interpreted as follows:

* US-PCS Document Creators **SHALL** be capable of populating all data elements as part of the document creation.
* US-PCS Document Consumers **SHALL** be capable of processing resource instances containing the data elements without generating an error or causing the application to fail. In other words, US-PCS Document Consumers **SHOULD** be capable of displaying the data elements for human use or storing it for other purposes.
* In situations where information on a particular data element is not present, and the reason for absence is unknown, Document Creators **SHALL NOT** include the data elements in the resource instance returned as part of document creation.
* US-PCS Document Consumers **SHALL** interpret missing data elements within resource instances as data not present in the US-PCS Document Creator's system.
* In situations where information on a particular data element is missing or suppressed, refer to the US Core guidance for [Missing Data](https://hl7.org/fhir/us/core/STU6.1-snapshot1/general-requirements.html#missing-data) and [Suppressed Data](https://hl7.org/fhir/us/core/STU6.1-snapshot1/general-guidance.html#suppressed-data). In cases where information on a specific data element is missing *and* the US-PCS Document Creator knows the precise reason for the absence of data (other than suppressed data), US-PCS Document Creators **SHOULD** send the reason for the missing information. This is done by following the same methodology outlined in the [Missing Data](https://hl7.org/fhir/us/core/STU6.1-snapshot1/general-requirements.html#missing-data) section but using the appropriate reason code instead of `unknown`.
* US-PCS Document Consumers **SHALL** be able to process resource instances containing data elements asserting missing information.

The terms *US-PCS Document Creator* and *US-PCS Document Consumer* when used in this guide share many similarities with [IPS Creator](https://hl7.org/fhir/uv/ips/ActorDefinition-Creator.html) and [IPS Consumer](https://hl7.org/fhir/uv/ips/ActorDefinition-Consumer.html) but should not be considered identical.


...