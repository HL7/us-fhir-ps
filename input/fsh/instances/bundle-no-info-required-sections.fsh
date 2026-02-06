Instance: bundle-no-info-required-sections
InstanceOf: Bundle-us-pcs
Title: "Bundle - No Information in Required Sections"
Description: "Bundle - No Information in Required Sections"
Usage: #example
* language = #en-US
* identifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* identifier.value = "59f51f0b-2005-485c-858e-3d3ae9657287"
* type = #document
* timestamp = "2026-02-02T20:42:11+00:00"
* entry[0].fullUrl = "https://fhir.example.org/fhir/Composition/514af4c1-194d-48b4-8afe-7be09d3f895a"
* entry[=].resource = 514af4c1-194d-48b4-8afe-7be09d3f895a
* entry[+].fullUrl = "https://fhir.example.org/fhir/Patient/ABC4321"
* entry[=].resource = ABC4321
* entry[+].fullUrl = "https://fhir.example.org/fhir/Organization/d9b97b04-b606-4f07-baf2-7eb3dcae0a2a"
* entry[=].resource = d9b97b04-b606-4f07-baf2-7eb3dcae0a2a
* entry[+].fullUrl = "https://fhir.example.org/fhir/Practitioner/19c24876-ccf8-45e7-8b66-462317e970f1"
* entry[=].resource = 19c24876-ccf8-45e7-8b66-462317e970f1
 
Instance: 514af4c1-194d-48b4-8afe-7be09d3f895a
InstanceOf: CompositionUsPcs
Usage: #inline
* meta.versionId = "1"
* language = #en-US
* identifier.system = "urn:oid:2.16.840.1.113883.2.18.7.2"
* identifier.value = "59f51f0b-2005-485c-858e-3d3ae9657287"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* category[clinicalnotecategory]
* subject = Reference(ABC4321)
* date = "2026-02-01T20:43:11+00:00"
* author = Reference(d9b97b04-b606-4f07-baf2-7eb3dcae0a2a)
* title = "US Patient Care Summary Generated 2026-02-01"
* confidentiality = #N
* attester.mode = #professional
* attester.time = "2026-02-01T20:42:11+00:00"
* attester.party = Reference(19c24876-ccf8-45e7-8b66-462317e970f1)
* custodian = Reference(d9b97b04-b606-4f07-baf2-7eb3dcae0a2a)
* event.code = $v3-ActClass#PCPR
* event.period.end = "2026-02-01"
* section[sectionAllergies].title = "Allergies and Intolerances"
* section[sectionAllergies].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #generated
* section[sectionAllergies].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-US' xml:lang='en-US'>There is no information available regarding the subject's allergies.</div>"
* section[sectionAllergies].emptyReason = $list-empty-reason#unavailable "Unavailable"
* section[sectionAllergies].emptyReason.text = "No information available"
* section[sectionProblems].title = "Problem List"
* section[sectionProblems].code = $loinc#11450-4 "Problem list - Reported"
* section[sectionProblems].text.status = #generated
* section[sectionProblems].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-US' xml:lang='en-US'>There is no information available about the subject's health problems or disabilities.</div>"
* section[sectionProblems].emptyReason = $list-empty-reason#unavailable "Unavailable"
* section[sectionProblems].emptyReason.text = "No information available"
* section[sectionMedications].title = "Medication Summary"
* section[sectionMedications].code = $loinc#10160-0 "History of Medication use Narrative"
* section[sectionMedications].text.status = #generated
* section[sectionMedications].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-US' xml:lang='en-US'>There is no information available about the subject's medication use or administration.</div>"
* section[sectionMedications].emptyReason = $list-empty-reason#unavailable "Unavailable"
* section[sectionMedications].emptyReason.text = "No information available"

Instance: ABC4321
InstanceOf: Patient
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* extension[0].extension[0].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[=].extension[+].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#1002-5 "American Indian or Alaska Native"
* extension[=].extension[+].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2028-9 "Asian"
* extension[=].extension[+].url = "text"
* extension[=].extension[=].valueString = "Mixed"
* extension[=].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* extension[+].extension[0].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2135-2 "Hispanic or Latino"
* extension[=].extension[+].url = "text"
* extension[=].extension[=].valueString = "Hispanic or Latino"
* extension[=].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* extension[+].extension[0].url = "tribalAffiliation"
* extension[=].extension[=].valueCodeableConcept = $v3-TribalEntityUS#187 "Paiute-Shoshone Tribe of the Fallon Reservation and Colony, Nevada"
* extension[=].extension[=].valueCodeableConcept.text = "Shoshone"
* extension[=].extension[+].url = "isEnrolled"
* extension[=].extension[=].valueBoolean = false
* extension[=].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-tribal-affiliation"
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
* extension[=].valueCode = #F
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-sex"
* extension[=].valueCode = #248152002
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-genderIdentity"
* extension[=].valueCodeableConcept = $v3-NullFlavor#UNK "Unknown"
* extension[=].valueCodeableConcept.text = "Unknown"
* identifier.use = #usual
* identifier.type = $v2-0203#MR "Medical Record Number"
* identifier.type.text = "Medical Record Number"
* identifier.system = "http://hospital.smarthealthit.org"
* identifier.value = "1032702"
* active = true
* name[0].use = #old
* name[=].family = "Shaw"
* name[=].given[0] = "Amy"
* name[=].given[+] = "V."
* name[=].period.start = "2016-12-06"
* name[=].period.end = "2020-07-22"
* name[+].family = "Baxter"
* name[=].given[0] = "Amy"
* name[=].given[+] = "V."
* name[=].suffix = "PharmD"
* name[=].period.start = "2020-07-22"
* telecom[0].system = #phone
* telecom[=].value = "555-555-5555"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "amy.shaw@example.com"
* gender = #female
* birthDate = "1987-02-20"
* address[0].use = #old
* address[=].line = "49 Meadow St"
* address[=].city = "Mounds"
* address[=].state = "OK"
* address[=].postalCode = "74047"
* address[=].country = "US"
* address[=].period.start = "2016-12-06"
* address[=].period.end = "2020-07-22"
* address[+].line = "183 Mountain View St"
* address[=].city = "Mounds"
* address[=].state = "OK"
* address[=].postalCode = "74048"
* address[=].country = "US"
* address[=].period.start = "2020-07-22"

Instance: d9b97b04-b606-4f07-baf2-7eb3dcae0a2a
InstanceOf: Organization
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization|6.1.0"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "1407071236"
* identifier[+].system = "http://example.org/fhir/sid/us-tin"
* identifier[=].value = "121111111"
* active = true
* type = $organization-type#prov "Healthcare Provider"
* name = "Acme Clinic"
* telecom[0].system = #phone
* telecom[=].value = "(+1) 734-677-7777"
* telecom[+].system = #email
* telecom[=].value = "customer-service@acme-clinic.org"
* address.line = "3300 WASHTENAW AVE STE 227"
* address.city = "AMHERST"
* address.state = "MA"
* address.postalCode = "01002"
* address.country = "USA"

Instance: 19c24876-ccf8-45e7-8b66-462317e970f1
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner|6.1.0"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "9941339100"
* identifier[+].extension.url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-jurisdiction"
* identifier[=].extension.valueCodeableConcept = $usps#MA
* identifier[=].extension.valueCodeableConcept.text = "Massachusetts"
* identifier[=].system = "http://www.acme.org/practitioners"
* identifier[=].value = "25456"
* name.family = "Bone"
* name.given = "Ronald"
* name.prefix = "Dr"
* address.use = #work
* address.line = "1003 HEALTHCARE DR"
* address.city = "AMHERST"
* address.state = "MA"
* address.postalCode = "01002"


