### The US-PCS for Care Continuity 

The primary use case of the United States Patient Care Summary (US-PCS) is aligned with the use case from [ISO 27269](https://www.iso.org/standard/84639.html) and the [IPS FHIR Implementation Guide 2.0.0](https://hl7.org/fhir/uv/ips/STU2/). From ISO 27269 *"the primary value of a patient summary, normalized by the IPS, is to facilitate and support appropriate clinical decision-making for the patient at the point of care. The IPS is designed to provide relevant information to assist planned and unplanned care across any organizational boundary, including country borders and their jurisdictional requirements (e.g. local, regional, state/provincial, national and international contexts)."* Both ISO 27269 and the FHIR IPS Implementation guides emphasize that patient summaries are **minimal** and **non-exhaustive** 

The US-PCS use case builds off of the original intent of the [Continuity of Care Document (CCD)](https://hl7.org/cda/us/ccda/StructureDefinition-ContinuityofCareDocumentCCD.html) as now published in the [Consolidated Clinical Document Architecture (C-CDA)](https://hl7.org/cda/us/ccda/) and widely used in the United States. The original intent of the CCD had several principles that align strongly with IPS and US-PCS: 

- **"Golden Minimum Dataset"**: Defined a limited, clinically relevant snapshot (medications, allergies, problems) to support safe care transitions. Modeled after the paper-chart “Face Sheet,” a front-of-chart snapshot of essential patient information.
- **Human-Readable First**: A core requirement that systems can easily render content for humans (i.e. the Narrative Blocks of US-PCS `Composition.section`) without advanced information systems.
- A **"Snapshot"** not a **"Complete History"**: It was intended to be a static moment in time - "Here is the patient's status at when last seen" - not a longitudinal dump of every blood pressure reading from the last 10 years.

Leveraging the above guidance, we define that the primary US-PCS use case is **to provide a minimal, non-exhaustive summary that supports clinical decision-making at the point of care for both planned and unplanned care across organizational boundaries.** It not intended to support a longitudal export of all patient data and it does not replace the full scope of documents in C-CDA.   

#### Data Inclusion and Networks Supporting US-PCS

In keeping with guidance from the IPS, the US-PCS only requires three sections of Problems, Allergies and Medications along with key patient and document information. There are many scenarios where information not included in US-PCS documents will be necessary for optimal clinical care. When appropriate, providers should leverage the ecosystem of US health information exchange capabilities to query for additional data. These may include organizational FHIR endpoints, regional health information exchange organization (HIEs), networks avaiable through electronic health record (EHR) vendors (e.g. [CareQuality](https://carequality.org/) and [Commonwell](https://www.commonwellalliance.org/)) as well as Qualified Health Information Networks (QHIN) through the [Trusted Exchange Framework and Common Agreement (TEFCA)](https://healthit.gov/policy/tefca/). Establishing patterns to request additional information support the "Golden Minimum" principle of US-PCS as aligned with the IPS is illustrated below.

{% include img.html img="More-Info.png" caption="Figure 4: Supporting Networks for Additional Data Beyond US-PCS"
    width="100%" %}

#### Queries for Additional Data using US Core FHIR servers  

Every entry in the [US-PCS Bundle profile](./StructureDefinition-Bundle-us-pcs.html) requires that the `entry.fullUrl` be included. When resources in US-PCS are from a US Core FHIR server, this URL and other identifiers provide key data for downstream receivers to query for additional information. For example, using the `entry.fullUrl` of the `Patient` resource (as well as the `patient.id`) allows for additional data requests without needing to perform a [`$match` operation](https://hl7.org/fhir/R4/patient-operation-match.html). US Core define a wide range of [search parameters](https://hl7.org/fhir/us/core/STU6.1/search-parameters-and-operations.html) which provide US implementers with a range of options in requesting additional when clinically appropriate.          

### Patient Mediated Interoperability with US-PCS

In 2025, the US Centers for Medicare and Medicaid Services (CMS) launched the ["Kill the Clipboard" initiative](https://www.cms.gov/health-tech-ecosystem/early-adopters/kill-the-clipboard) that aims to eliminate the manual, error‑prone transfer of medical information by empowering patients and providers with seamless, standards‑based data exchange.
This initiative, pledged by over 60 organizations, will facilitate record sharing using QR codes (e.g. [SMART Health Cards and Links](https://hl7.org/fhir/uv/smart-health-cards-and-links/)) with FHIR Bundles. The [US-PCS FHIR Bundle profile](./StructureDefinition-Bundle-us-pcs.html) is designed to facilitate sharing essential health information across systems and aligns with this use case. 

When paired with SMART Health Links, US-PCS data can be packaged into a secure, portable URL that patients can easily share across healthcare organizations. While this US-PCS Implementation Guide does not offer full guidance on this use case, it is anticipated that US-PCS will be a component in initiatives like "Kill the Clipboard" that replace paper‑based intake forms with digital, patient‑mediated interoperability. In addition several early implementations of this (such as Washington State Health Summary and CommonHealth) show the potential of this approach. 

### Use Case Implementations

While not comprehensive, the following list include US early implementers that are providing IPS support using US Core resources that align with the guidance in US-PCS: 

- [Epic](https://www.epic.com/)
- [MEDITECH](https://ehr.meditech.com/)
- [Oracle Health](https://www.oracle.com/health/)
- [Washington State Department of Health](https://doh.wa.gov/) 
- [CommonHealth](https://www.commonhealth.org/)