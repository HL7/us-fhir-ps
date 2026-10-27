Profile: CompositionUsRealm
Parent: ClinicalDocumentComposition
Id: Composition-us-realm
Title: "US Realm Composition"
Description: """A US Realm Composition from which specific documents can be derived and profiled."""
* ^status = #draft
* ^date = "2026-10-27T10:50:07-05:00"
* ^publisher = "HL7 International / Cross-Group Projects"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/cgp"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^purpose = "."
* ^copyright = "HL7 International"
* . ^short = "US Realm Composition"
* . ^definition = "."
* language = #en-US
* subject 1..1 MS
* subject only Reference(us-core-patient)
* subject.reference 1..1 MS
* author 1..* MS
* author only Reference(us-core-practitioner or us-core-practitionerrole or Device or us-core-patient or us-core-relatedperson or us-core-organization)
* custodian 1..1 MS
* custodian ^short = "Organization which maintains the composition"
* custodian ^comment = "This is required in all US documents due to previous document C-CDA paradigms. In addition, it provides a logical starting point for systems searching for additional data outside documents."
* custodian only Reference(us-core-organization)
* relatesTo.target[x] only Identifier or Reference(Composition or Composition-us-realm)
* confidentiality 1..1 MS
* section 1.. MS
* section.extension contains $composition-section-note named section-note 0..*
* section.extension[section-note] ^short = "Additional notes that apply to the section (but not to a specific resource)."
* section.extension[section-note] ^definition = "Additional notes that apply to the section (but not to a specific resource)."
* section.title 1..1 MS
* section.code 1..1 MS
* section.text 1..1 MS