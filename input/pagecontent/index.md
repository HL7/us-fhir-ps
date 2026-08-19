## The United States Patient Care Summary (US-PCS)

### Purpose and Approach

The United States Patient Care Summary (US-PCS) is a FHIR document that captures key information for care transitions. It conforms to the [FHIR International Patient Summary (IPS)](https://hl7.org/fhir/uv/ips/STU2/) derives its profiles from [FHIR Clinical Documents (1.1)](https://hl7.org/fhir/uv/fhir-clinical-document/STU1.1/en/) and applies additional constraints relevant to the United States. Its use is intended as a modern, streamlined summary that builds on the long-standing exchange of clinical documents in the United States. All US-PCS document instances will conform to the FHIR IPS specification.

Health records in the United States have been implementing FHIR resources through the [US Core](https://hl7.org/fhir/us/core/) profiles over the past decade, and the US-PCS seeks to leverage those resources through its profiles. This US-PCS Implementation Guide defines a [Bundle](./StructureDefinition-Bundle-us-pcs.html) and [Composition](./StructureDefinition-Composition-us-pcs.html) profile with re-use of individual clinical resources defined in the [US Core Implementation Guide](https://hl7.org/fhir/us/core/) as shown below.    

{% include img.html img="The US-PCS.png" caption="Figure 1: The US-PCS" width="80%" %}

### Project Need

The rapid global adoption of the IPS is reshaping expectations for cross-border, interoperable patient information. Countries across Europe, Asia-Pacific, and the Americas are implementing IPS-aligned solutions to support emergency care, travel medicine, cross-jurisdictional health services, public health response, and modern digital health ecosystems. As reflected in the growing number of national implementations showcased worldwide, the IPS has become a foundational global asset for safe, timely, and semantically consistent patient information exchange.

These international advancements create a strong external driver for the United States to establish a nationally tailored, IPS-conformant patient summary that maintains global interoperability while addressing US clinical, regulatory, and technical realities. Aligning with this global momentum ensures that US healthcare remains connected to an emerging worldwide framework, supports care for US travelers abroad and international patients in the US, and signals US leadership in global health data standards.
Developing the US-PCS harmonizes with the IPS with FHIR US Core and positions the nation to participate fully in the evolving global digital health landscape to meet increasing expectations from patients, providers, governments, and implementers.

The [Project Proposal](https://jira.hl7.org/browse/PSS-2660) and [Project Scope Statement](https://jira.hl7.org/browse/PSS-2718) for US-PCS are available for additional reference. 

### Project Scope

#### In-Scope Items

FHIR Implementation Guide with a minimum of profiles for Bundle and Composition that:
- Derives from [FHIR Clinical Documents Profile 1.1.0](https://hl7.org/fhir/uv/fhir-clinical-document/STU1.1/)
- Conforms to [FHIR International Patient Summary 2.0.1](https://hl7.org/fhir/uv/ips/STU2/) 
- Provides narrative guidance on:
  - Relationship to US Core (https://hl7.org/fhir/us/core/)
  - Terminology guidance in regards to IPS 
  - Use case of US-PCS
  - Guidance on relationship to prior CDA documents and future FHIR-based clinical documents in US Realm 
  - Description of implementation learnings/experience 
- Examples of US-PCS along with validation and testing artifacts

#### Out-of-Scope Items

- This work does not replace the full capabilities of the Consolidated Clinical Document Architecture (C-CDA). Document types beyond patient summary will not be profiled.
- This work does not provide guidance on CDA to FHIR or FHIR to CDA mappings
- This work will not profile resources that already exist in US Core

### Principles of the US-PCS

This US-PCS Implementation Guide specifies both **business principles** for the creation of patient care summaries and **technical capabilities** of systems that conform to this specification. The business principles of US-PCS build on the original intent of the CCD and conform with the FHIR IPS specifications. These are explained in the [US-PCS Use Case](./use-case.html) to keep required content minimized to the most relevant information. 

The guide distinguishes **three required sections (Problems, Allergies, Medications)** which must be included in all instances from **four additional sections** that systems must be capable of sending/receiving. US-PCS also requires support of the $summary operation in US-PCS generation. These technical capabilities are represented through ["Must Support" flags](./general-guidance.html#must-support-elements) throughout this specification as well as conformance statements in [US-PCS General Guidance](./general-guidance.html#conformance). 

We strongly encourage implementers to consider the use-case of minimal, non-exhaustive summaries when creating US-PCS documents. Although systems must be capable of sending and receiving more than the required sections, we strongly discourage systems from sharing all available data in most US-PCS document instances. For example, sending decades of vital sign and laboratory data creates large, unwieldly documents that violate the spirit of a minimal, non-exhaustive patient summary. The separation of **business principles** from **technical capabilities** in the US-PCS are shown in the following illustration: 

{% include img.html img="The US-PCS Principles.png" caption="Figure 2: The US-PCS Business Principles and Technical Capabilities"
    width="80%" %}

### Authors and Contributors

| Role  | Name | Organization | Contact |
| --- | --- | --- | --- |
| **Editor** | John D'Amore | More Informatics | johnd@moreinformatics.com |
| **Editor** | Brett Marquard | Wave One Associates | brett@waveoneassociates.com |
| **Editor** | Gay Dolin | Namaste Informatics | gdolin@namasteinformatics.com |
| **Contributor** | Eric Haas | Health eData | ehaas@healthedatainc.com |
| **Contributor** | Rob Hausam | Hausam Consulting | rob@hausamconsulting.com |
| **Contributor** | Josh Hemmesch | MEDITECH | jhemmesch@meditech.com |
| **Contributor** | James Jahns | Epic | jjahns@epic.com |
| **Contributor** | Bryant Karras | Washington Department of Health | Bryant.Karras@DOH.WA.GOV |
| **Contributor** | Isaac Vetter | Epic | Isaac@epic.com |
| **Contributor** | Jason Vogt | MEDITECH | jvogt@meditech.com |

