### The US-PCS for Care Continuity 

The primary use case of the United States Patient Care Summary (US-PCS) is aligned with the use case from [ISO 27269](https://www.iso.org/standard/84639.html) and the [IPS FHIR Implementation Guide 2.0.0](https://hl7.org/fhir/uv/ips/STU2/). From ISO 27269 *"the primary value of a patient summary, normalized by the IPS, is to facilitate and support appropriate clinical decision-making for the patient at the point of care. The IPS is designed to provide relevant information to assist planned and unplanned care across any organizational boundary, including country borders and their jurisdictional requirements (e.g. local, regional, state/provincial, national and international contexts)."* Both ISO 27269 and the FHIR IPS Implementation guides emphasize that patient summaries are **minimal** and **non-exhaustive** 

The US-PCS use case builds off of the original intent of the [Continuity of Care Document (CCD)](https://hl7.org/cda/us/ccda/StructureDefinition-ContinuityofCareDocumentCCD.html) as now published in the [Consolidated Clinical Document Architecture (C-CDA)](https://hl7.org/cda/us/ccda/) and widely used in the United States. The original intent of the CCD had several principles that align strongly with IPS and US-PCS: 

- **"Golden Minimum Dataset"**: Defined a limited, clinically relevant snapshot (medications, allergies, problems) to support safe care transitions. Modeled after the paper-chart “Face Sheet,” a front-of-chart snapshot of essential patient information.
- **Human-Readable First**: A core requirement that systems can easily render content for humans (i.e. the Narrative Blocks of US-PCS `Composition.section`) without advanced information systems.
- A **"Snapshot"** not a **"Complete History"**: It was intended to be a static moment in time - "Here is the patient's status at when last seen" - not a longitudinal dump of every blood pressure reading from the last 10 years.

Leveraging the above guidance, we define that the primary US-PCS use case is **to provide a minimal, non-exhaustive summary that supports clinical decision-making at the point of care for both planned and unplanned care across organizational boundaries.** It is not a longitudinal export of all patient data and it does not replace the full scope of documents in C-CDA.  In addition to the principles above, the US-PCS use-case adds the following principle: 

- US-PCS documents should include **sufficient references to underlying data sources** so implementers can retrieve additional clinical information beyond what is contained in the summary.   

This principle as applied to the US health data ecosystem is further elaborated in the following two sub-sections. 

#### Networks Supporting US-PCS

In keeping with guidance from the IPS, the US-PCS only requires three sections of Problems, Allergies and Medications along with key patient and document information. There are many scenarios where information not included in US-PCS documents will be necessary for optimal clinical care. When appropriate, providers should leverage the ecosystem of US health information exchange capabilities to query for additional data. These may include organizational FHIR endpoints, regional health information exchange organizations (HIEs), networks avaiable through electronic health record (EHR) vendors (e.g. [CareQuality](https://carequality.org/) and [Commonwell](https://www.commonwellalliance.org/)) as well as Qualified Health Information Networks (QHIN) through the [Trusted Exchange Framework and Common Agreement (TEFCA)](https://healthit.gov/policy/tefca/). Establishing patterns to request additional information support the principles of US-PCS as aligned with the IPS is illustrated below.

{% include img.html img="More-Info.png" caption="Figure 4: Supporting Networks for Additional Data Beyond US-PCS"
    width="90%" %}

#### Queries for Additional Data using US Core FHIR servers  

FHIR Servers that support the [US-Core Implementation Guide](https://hl7.org/fhir/us/core/STU6.1/) will generally contain additional information not included in US-PCS documents. To search for and retrieve additional data, implementers can access US Core servers using [methods outlined in that guide](https://hl7.org/fhir/us/core/STU6.1/security.html).  

When resources in US-PCS documents are from a US Core FHIR server, the `entry.fullUrl` in the [US-PCS Bundle profile](./StructureDefinition-Bundle-us-pcs.html) specify originating information. This `entry.fullUrl` and other identifiers allow downstream receivers to query for additional data when clinically appropriate. For example, using the `entry.fullUrl` of the `Patient` resource (as well as the `patient.id`) allows for additional data requests without performing a [`$match` operation](https://hl7.org/fhir/R4/patient-operation-match.html). The US Core Implementation Guide defines a wide range of [search parameters](https://hl7.org/fhir/us/core/STU6.1/search-parameters-and-operations.html) that provide implementers several options to request additional data. 

### Patient Mediated Interoperability with US-PCS

In 2025, the US Centers for Medicare and Medicaid Services (CMS) launched the ["Kill the Clipboard" initiative](https://www.cms.gov/health-tech-ecosystem/early-adopters/kill-the-clipboard) that aims to eliminate the manual, error‑prone transfer of medical information by empowering patients and providers with seamless, standards‑based data exchange.
This initiative, pledged by over 60 organizations, will facilitate record sharing using QR codes (e.g. [SMART Health Cards and Links](https://hl7.org/fhir/uv/smart-health-cards-and-links/)) with FHIR Bundles. The [US-PCS FHIR Bundle profile](./StructureDefinition-Bundle-us-pcs.html) is designed to facilitate sharing essential health information across systems and aligns with this use case. 

When paired with SMART Health Links, US-PCS data can be packaged into a secure, portable URL that patients can easily share across healthcare organizations. While this US-PCS Implementation Guide does not offer full guidance on this use case, it is anticipated that US-PCS will be a component in initiatives like "Kill the Clipboard" that replace paper‑based intake forms with digital, patient‑mediated interoperability. In addition several early implementations of this (such as [Washington State Health Summary](https://myhealthsummary.demo.cirg.uw.edu/) and [CommonHealth](https://www.commonhealth.org/ips-developer-guide)) show the potential of this approach. 
