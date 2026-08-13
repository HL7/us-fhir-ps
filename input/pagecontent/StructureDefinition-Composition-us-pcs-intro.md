<blockquote class="stu-note">
  <p> The IPS FHIR Implementation Guide does not include a section for Encounters. Based on
    implementer feedback and historic precedence among C-CDA documents, an encounters section 
    has been included in the US-PCS. Consrequently, <code>Composition.encounter</code> and 
    <code>Composition.event[careProvisioningEvent].detail</code> are not recommended for use 
    in US-PCS. In US-PCS, encounter details are included in the Encounters section. 
    
    In addition, a request has been made to the International
    Patient Summary Coordinating Committee to include an encounters section in future version 
    of the guide. Implementers  
  </p>
</blockquote>

### Mandatory and Must Support Data Elements

The following data elements must always be present (Mandatory definition) or must be supported if the data is present in the sending system and handled by the receiving system (see [US-PCS Must Support definition](./general-guidance.html#must-support-elements)). They are presented below in a simple human-readable explanation. Profile specific guidance and the formal summary, and definitions then follow.

**Each US-PCS Composition Must Have:**

1. a status
1. a type specifying that it is a patient summary
1. a subject
1. a date
1. an author
1. a title
1. a confidentiality code
1. a custodian (referencing a US Core Organization)
1. Sections representing: allergies, medications and problems

**Each US-PCS Composition Must Support:**

1. a textual narrative of the Composition (which does not include section content)
1. extensions defined in [FHIR Clinical Documents](https://hl7.org/fhir/uv/fhir-clinical-document/STU1.1/en/StructureDefinition-clinical-document-composition.html)
1. Sections representing: encounters, immunization, procedures and results

### Profile Specific Implementation Guidance

This section provides detailed implementation guidance for the US-PCS Profile.
The US-PCS Composition includes seven priority sections which is a subset of all sections profiled in the IPS FHIR Implementation Guide. Implementers may send additional sections so long as:

- §comp-1: Each section **SHALL** include: a title, a code, a textual narrative of the data in the section (See [IPS guide on Narrative](https://hl7.org/fhir/uv/ips/STU2/Design-Conventions.html#narrative-and-language-translation)).§
- §comp-2: The corresponding US Core Implementation Guide resource **SHALL** be sent in a given section when available. For example, when sending a plan of care section (LOINC: 18776-5), US Core CarePlan Profile resources will be used when available. A list of sections with corresponding US Core resources are included in the [Aligning US-PCS Sections with IPS, C-CDA and US Core table](./general-guidance.html#aligning-us-pcs-sections-with-ips-c-cda-and-us-core) in this guide§
- §comp-3: Each section **SHALL** contain a unique code to identify that section. For example, it would not be appropriate to send two separate Advance Directives sections (LOINC: 42348-3). This is enforced through the discriminator profiling on `section.code`§

The US-PCS [General Guidance](./general-guidance.html) page includes the definition of Must Support for this guide and additional guidance on populating sections.
