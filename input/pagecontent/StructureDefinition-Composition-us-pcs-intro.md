<blockquote class="note-to-balloters">
  <p> The IPS FHIR Implementation Guide does not include a section for Encounters. Based on
    implementer feedback and historic precedence among C-CDA documents, there has been an interest
    in including an Encounters section in the US-PCS. This US-PCS guide currently includes an
    Encounters section to represent encounter information using the US Core Encounter Profile. We
    seek ballot feedback on the following questions:
  </p>
  <ol>
    <li>Should the Encounters section be included as Must Support?</li>
    <li>How should guidance be provided that these Encounter resources should not result in
      large unweidly US-PCS documents? For example, not all resources linked from an Encounter
      resource need be included in the US-PCS Bundle.</li>
    <li>What types of Encounters should be encouraged for inclusion in the US-PCS? Experience from
      other jurisdictions (e.g. Nova Scotia) has suggested limiting the types of encounters
      included in the US-PCS to those that are most relevant to longitudinal care, such as
      emergency and inpatient encounters, and excluding encounters such as telehealth or
      ambulatory visits. Do ballot reviewers agree with this approach?
    </li>
  </ol>
  <p>
    The content of this section is still being developed and
    may be subject to change based on further feedback and implementation experience.
  </p>
</blockquote>

<blockquote class="note-to-balloters">
  <p> The US-PCS guide currently only profiles the seven required and Must Support sections of its
    patient summary. There are 10 other sections of the IPS not currently profiled in the US-PCS,
    but these other sections can be populated in US-PCS documents. The focus on the
    seven profiled sections is designed to ease implementer review. We seek ballot feedback on
    this design decision.
  </p>
</blockquote>

### Mandatory and Must Support Data Elements

The following data elements must always be present (Mandatory definition) or must be supported if the data is present in the sending system and handled by the receiving system (see [US-PCS Must Support definition](./general-guidance.html#must-support-elements)). They are presented below in a simple human-readable explanation. Profile specific guidance and the formal summary, and definitions then follow.

**Each US-PCS Composition Must Have:**
1. a status
1. a type specifying that it is a patient summary (LOINC: 60591-5)
1. a category specifying that is it a clinical note (LOINC: 107903-7)
1. a subject (referencing a US Core Patient)
1. a date
1. an author (referencing a Device or US Core Practitioner, PractitionerRole, Patient, RelatedPerson or Organization)
1. a title
1. a confidentiality code
1. a custodian (referencing a US Core Organization)
1. allergies, medications and problems sections'* each with: 
    1. a title
    1. a code
    1. a textual narrative of the data in the section (See [IPS guide on Narrative](https://hl7.org/fhir/uv/ips/STU2/Design-Conventions.html#narrative-and-language-translation))
    1. at least one entry referencing a US Core resource or an emptyReason
  

**Each US-PCS Composition Must Support:**
1. a `meta.profile` to share profile and version information
1. a textual narrative of the Composition (which does not include section content)
1. the language of the document
1. extensions defined in [FHIR Clinical Documents](https://hl7.org/fhir/uv/fhir-clinical-document/STU1.0.1/en/StructureDefinition-clinical-document-composition.html)
1. an identifier
1. attester information
1. relations to other documents
1. clinical services (`event`) being documented
1. encounters, immunization, procedures and results sections'* each with:
    1. a title
    1. a code
    1. a textual narrative of the data in the section (See [IPS guide on Narrative](https://hl7.org/fhir/uv/ips/STU2/Design-Conventions.html#narrative-and-language-translation))
    1. at least one entry referencing a US Core resource or an emptyReason

'* All sections Must Support the [change made](http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/ChangeMade) and [section-note](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-note.html) extensions which document changes and other notes to the section. 
 
### Profile Specific Implementation Guidance

The seven sections profiled in the US-PCS Composition do not include all sections profiled in the IPS FHIR Implementation Guide. Implementers may send additional sections so long as: 

- The corresponding US Core Implementation Guide resource **SHALL** be sent in given section when available. For example, when sending a plan of care section (LOINC: 18776-5), US CarePlan Profile resources will be used when available. A list of sections with corresponding US Core resources are included in the [Aligning US-PCS Sections with IPS, C-CDA and US Core table](./general-guidance.html#aligning-us-pcs-sections-with-ips-c-cda-and-us-core) in this guide  
- Each section **SHALL** contain a unique code to identify that section. For example, it would not be appropriate to send two separate Advance Directives sections (LOINC: 42348-3). This is enforced through the discriminator profiling on `section.code`

The US-PCS [General Guidance](./general-guidance.html) page includes the definition of Must Support for this guide and additional guidance on populating sections. 