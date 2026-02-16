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

### The US-PCS Sections

The US-PCS Composition contains three required  (Problems, Allergies and Medications) and thirteen additional sections as aligned with the IPS:

{% include img.html img="The US-PCS Composition.png" caption="Figure 2: The US-PCS"
    width="80%" %}

### Authors and Contributors

| Role  | Name | Organization | Contact |
| --- | --- | --- | --- |
| **Editor** | John D'Amore | More Informatics | johnd@moreinformatics.com |
| **Editor** | Brett Marquard | Wave One Associates | brett@waveoneassociates.com |
| **Editor** | Gay Dolin | Namaste Informatics | gdolin@namasteinformatics.com |

