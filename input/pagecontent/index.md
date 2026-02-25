## The United States Patient Care Summary (US-PCS)

### Purpose and Approach

The United States Patient Care Summary (US-PCS) is a FHIR document that captures key information for care transitions. It aligns with work from the [FHIR International Patient Summary]() and is intended as a modern, streamlined summary that builds on the long-standing exchange of clinical documents in the United States using the [Consolidated Clinical Document Architecture (C-CDA)](https://hl7.org/cda/us/ccda/) and specifically the [Continuity of Care Document (CCD)](https://hl7.org/cda/us/ccda/StructureDefinition-ContinuityofCareDocumentCCD.html).

Health records in the United States have been implementing FHIR resources through the [US Core](https://hl7.org/fhir/us/core/STU6.1/) profiles over the past decade, and the US-PCS seeks to leverage those resources through profiles that derive from [FHIR Clinical Documents](https://hl7.org/fhir/uv/fhir-clinical-document/STU1.0.1/en/) and align with the [International Patient Summary](https://hl7.org/fhir/uv/ips/STU2/). This US-PCS Implementation Guide includes a Bundle and Composition profile with re-use of individual clinical resources defined in the [US Core Implementation Guide](https://hl7.org/fhir/us/core/STU6.1/) as shown below.    

{% include img.html img="The US-PCS.png" caption="Figure 1: The US-PCS" width="80%" %}

### Project Need

The rapid global adoption of the International Patient Summary (IPS) is reshaping expectations for cross-border, interoperable patient information. Countries across Europe, Asia-Pacific, and the Americas are implementing IPS-aligned solutions to support emergency care, travel medicine, cross-jurisdictional health services, public health response, and modern digital health ecosystems. As reflected in the growing number of national implementations showcased worldwide, the IPS has become a foundational global asset for safe, timely, and semantically consistent patient information exchange.

These international advancements create a strong external driver for the United States to establish a nationally tailored, IPS-aligned patient summary that maintains global interoperability while addressing US clinical, regulatory, and technical realities. Aligning with this global momentum ensures that US healthcare remains connected to an emerging worldwide framework, supports care for US travelers abroad and international patients in the US, and signals US leadership in global health data standards.
Developing the US-PCS harmonizes with the IPS with FHIR US Core and positions the nation to participate fully in the evolving global digital health landscape to meet increasing expectations from patients, providers, governments, and implementers.

The [Project Proposal](https://jira.hl7.org/browse/PSS-2660) and [Project Scope Statement](https://jira.hl7.org/browse/PSS-2718) for US-PCS are available for additional reference. 

### Project Scope

#### In-Scope Items

FHIR Implementation Guide with a mininum of profiles for Bundle and Composition that:
- Derives from [FHIR Clinical Documents Profile 1.0.1](https://hl7.org/fhir/uv/fhir-clinical-document/STU1.0.1/)
- Aligns to [FHIR International Patient Summary 2.0.0](https://hl7.org/fhir/uv/ips/STU2/) 
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

This US-PCS Implementation Guide specifies both **business principles** for the creation of patient care summaries and **technical capabilities** of systems that conform to this specification. The business principles of US-PCS build on the original intent of the CCD and align with principles from the ISO and FHIR IPS specifications. These are explained in the [US-PCS Use Case](./use-case.html) and keep required content of US-PCS summaries to three required section (i.e. Problems, Allergies, and Medications). US-PCS technical capabilities specify that system must be capable of sending and receiving data in four additional sections and also use the $summary operation in US-PCS generation. These technical capabilities are represented through ["Must Support" flags](./general-guidance.html#must-support-elements) throughout this specification as well as conformance statements in [US-PCS General Guidance](./general-guidance.html). We strongly encourage implementers to consider the use-case of minimal, non-exhaustive summaries when creating US-PCS documents. Although systems must be capable of sending and receiving more than the required sections, we strongly discourage systems from sharing all available data in most US-PCS document instances. For example, sending decades of vital sign and laboratory data creates large, unwieldly documents that violated spirit of a minimal, non-exhaustive patient summary.    

The separation of **business principles** from **technical capabilities** in the US-PCS are shown in the following illustration: 

{% include img.html img="The US-PCS Principles.png" caption="Figure 2: The US-PCS Business Principles and Technical Capabilities"
    width="80%" %}

### Authors and Contributors

| Role  | Name | Organization | Contact |
| --- | --- | --- | --- |
| **Editor** | John D'Amore | More Informatics | johnd@moreinformatics.com |
| **Editor** | Brett Marquard | Wave One Associates | brett@waveoneassociates.com |
| **Editor** | Gay Dolin | Namaste Informatics | gdolin@namasteinformatics.com |

