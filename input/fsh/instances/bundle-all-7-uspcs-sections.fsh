Instance: IPS-20240921185300
InstanceOf: Bundle-us-pcs
Usage: #example
* language = #en-US
* identifier.system = "urn:oid:2.16.724.4.8.10.200.10"
* identifier.value = "ac7a747c-a2c9-493c-ba39-4ac6997eed1e"
* type = #document
* timestamp = "2024-09-21T18:53:00.8116604+00:00"
* entry[0].fullUrl = "https://fhir.example.org/fhir/Composition/514af4c1-194d-48b4-8afe-7be09d3f895a"
* entry[=].resource = 514af4c1-194d-48b4-8afe-7be09d3f895a
* entry[+].fullUrl = "https://fhir.example.org/fhir/Patient/DEF1234"
* entry[=].resource = DEF1234
* entry[+].fullUrl = "https://fhir.example.org/fhir/Organization/8dcf67a5-b677-4c4f-94c6-a4cf41c9a522"
* entry[=].resource = 8dcf67a5-b677-4c4f-94c6-a4cf41c9a522
* entry[+].fullUrl = "https://fhir.example.org/fhir/PractitionerRole/75ed6f24-9a7e-4568-9c05-91b6d4786743"
* entry[=].resource = 75ed6f24-9a7e-4568-9c05-91b6d4786743
* entry[+].fullUrl = "https://fhir.example.org/fhir/Practitioner/19c24876-ccf8-45e7-8b66-462317e970f1"
* entry[=].resource = 19c24876-ccf8-45e7-8b66-462317e970f1
* entry[+].fullUrl = "https://fhir.example.org/fhir/AllergyIntolerance/9838cf73-c30d-4aa5-8ed8-36a079060b81"
* entry[=].resource = 9838cf73-c30d-4aa5-8ed8-36a079060b81
* entry[+].fullUrl = "https://fhir.example.org/fhir/Condition/8039e4a7-d459-454c-92a5-6c17ca2a824b"
* entry[=].resource = 8039e4a7-d459-454c-92a5-6c17ca2a824b
* entry[+].fullUrl = "https://fhir.example.org/fhir/Condition/f8ab8ac1-56d1-4239-8303-dc70c1a3d0e1"
* entry[=].resource = f8ab8ac1-56d1-4239-8303-dc70c1a3d0e1
* entry[+].fullUrl = "https://fhir.example.org/fhir/MedicationRequest/c3d31980-2a88-45b6-a7af-3fe8d32cc6fa"
* entry[=].resource = c3d31980-2a88-45b6-a7af-3fe8d32cc6fa
* entry[+].fullUrl = "https://fhir.example.org/fhir/Immunization/17b5a6d7-307b-4726-8c8c-0031e61582ce"
* entry[=].resource = 17b5a6d7-307b-4726-8c8c-0031e61582ce
* entry[+].fullUrl = "https://fhir.example.org/fhir/Observation/b0187efd-5f9b-474d-87bc-efebf877449a"
* entry[=].resource = b0187efd-5f9b-474d-87bc-efebf877449a
* entry[+].fullUrl = "https://fhir.example.org/fhir/Procedure/fb04f2f5-d5b6-4031-85e9-547c78deb658"
* entry[=].resource = fb04f2f5-d5b6-4031-85e9-547c78deb658
* entry[+].fullUrl = "https://fhir.example.org/fhir/Encounter/e8be20b8-6f24-4204-8eca-6bc8ecd2b26b"
* entry[=].resource = e8be20b8-6f24-4204-8eca-6bc8ecd2b26b
* entry[+].fullUrl = "https://fhir.example.org/fhir/Encounter/e11bfacd-557d-416b-bb7f-165afc68bca0"
* entry[=].resource = e11bfacd-557d-416b-bb7f-165afc68bca0

Instance: 514af4c1-194d-48b4-8afe-7be09d3f895a
InstanceOf: Composition-us-pcs
Usage: #inline
* id = "514af4c1-194d-48b4-8afe-7be09d3f895a"
* meta.versionId = "1"
* language = #en-US
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-US' xml:lang='en-US'>US Patient Care Summary for John Shaw</div>"
* identifier.system = "urn:oid:2.16.840.1.113883.2.18.7.2"
* identifier.value = "ac7a747c-a2c9-493c-ba39-4ac6997eed1e"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject.reference = "https://fhir.example.org/fhir/Patient/DEF1234"
* date = "2024-09-13"
* author.reference = "https://fhir.example.org/fhir/Organization/8dcf67a5-b677-4c4f-94c6-a4cf41c9a522"
* title = "US Patient Care Summary"
* confidentiality = #N
* attester.mode = #professional
* attester.time = "2024-09-13"
* attester.party.reference = "https://fhir.example.org/fhir/PractitionerRole/75ed6f24-9a7e-4568-9c05-91b6d4786743"
* custodian.reference = "https://fhir.example.org/fhir/Organization/8dcf67a5-b677-4c4f-94c6-a4cf41c9a522"
* event.code.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* event.code.coding.code =  $v3-ActClass#PCPR
* event.period.end = "2024-09-13"
* section[sectionAllergies].title = "Allergies and Intolerances"
* section[sectionAllergies].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #generated
* section[sectionAllergies].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-US' xml:lang='en-US'>To be inserted</div>"
* section[sectionAllergies].entry.reference = "https://fhir.example.org/fhir/AllergyIntolerance/9838cf73-c30d-4aa5-8ed8-36a079060b81"
* section[sectionAllergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table border=\"1\"><tr><th>Allergy Type</th><th>Substance</th><th>Onset</th><th>Clinical Status</th><th>Verification Status</th><th>Reaction</th></tr></table></div>"
* section[sectionProblems].title = "Problem List"
* section[sectionProblems].code = $loinc#11450-4 "Problem list - Reported"
* section[sectionProblems].text.status = #generated
* section[sectionProblems].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-US' xml:lang='en-US'>To be inserted</div>"
* section[sectionProblems].entry[0].reference = "https://fhir.example.org/fhir/Condition/8039e4a7-d459-454c-92a5-6c17ca2a824b"
* section[sectionProblems].entry[+].reference = "https://fhir.example.org/fhir/Condition/f8ab8ac1-56d1-4239-8303-dc70c1a3d0e1"
* section[sectionProblems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table border=\"1\"><tr><th>Problem</th><th>Onset</th><th>Clinical Status</th><th>Verification Status</th><th>Severity</th></tr></table></div>"
* section[sectionMedications].title = "Medication Summary"
* section[sectionMedications].code = $loinc#10160-0 "History of Medication use Narrative"
* section[sectionMedications].text.status = #generated
* section[sectionMedications].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-US' xml:lang='en-US'>To be inserted</div>"
* section[sectionMedications].entry.reference = "https://fhir.example.org/fhir/MedicationRequest/c3d31980-2a88-45b6-a7af-3fe8d32cc6fa"
* section[sectionImmunizations].title = "Immunizations"
* section[sectionImmunizations].code = $loinc#11369-6 "History of Immunization note"
* section[sectionImmunizations].text.status = #generated
* section[sectionImmunizations].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-US' xml:lang='en-US'>To be inserted</div>"
* section[sectionImmunizations].entry.reference = "https://fhir.example.org/fhir/Immunization/17b5a6d7-307b-4726-8c8c-0031e61582ce"
* section[sectionResults].title = "Results"
* section[sectionResults].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[sectionResults].text.status = #generated
* section[sectionResults].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-US' xml:lang='en-US'>To be inserted</div>"
* section[sectionResults].entry.reference = "https://fhir.example.org/fhir/Observation/b0187efd-5f9b-474d-87bc-efebf877449a"
* section[sectionProceduresHx].title = "History of Procedures"
* section[sectionProceduresHx].code = $loinc#47519-4 "History of Procedures Document"
* section[sectionProceduresHx].text.status = #generated
* section[sectionProceduresHx].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-US' xml:lang='en-US'>To be inserted</div>"
* section[sectionProceduresHx].entry.reference = "https://fhir.example.org/fhir/Procedure/fb04f2f5-d5b6-4031-85e9-547c78deb658"
* section[sectionEncounters].title = "Encounters"
* section[sectionEncounters].text.status = #generated
* section[sectionEncounters].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en-US' xml:lang='en-US'>To be inserted</div>"
* section[sectionEncounters].code = $loinc#46240-8 "History of Hospitalizations+Outpatient visits Narrative"
* section[sectionEncounters].entry[0].reference = "https://fhir.example.org/fhir/Encounter/e8be20b8-6f24-4204-8eca-6bc8ecd2b26b"
* section[sectionEncounters].entry[+].reference = "https://fhir.example.org/fhir/Encounter/e11bfacd-557d-416b-bb7f-165afc68bca0"

Instance: DEF1234
InstanceOf: Patient
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* language = #en
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
* identifier.value = "3104721"
* active = true
* name.use = #old
* name.family = "Shaw"
* name.given = "John"
* name.period.start = "1987-02-20"
* telecom[0].system = #phone
* telecom[=].value = "555-555-5555"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "john.shaw@example.com"
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

Instance: 8dcf67a5-b677-4c4f-94c6-a4cf41c9a522
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

Instance: 75ed6f24-9a7e-4568-9c05-91b6d4786743
InstanceOf: PractitionerRole
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole|6.1.0"
* practitioner = Reference(https://fhir.example.org/fhir/Practitioner/19c24876-ccf8-45e7-8b66-462317e970f1) "Brenda Jennings Richard MD"
* organization = Reference(https://fhir.example.org/fhir/Organization/acme-lab) "Acme Lab"
* code.coding[0] = $v3-ParticipationFunction#PCP "primary care physician"
* code.coding[+] = $provider-taxonomy#261QP2300X "Primary Care Clinic/Center"
* specialty = $provider-taxonomy#208D00000X "General Practice Physician"
* location = Reference(https://fhir.example.org/fhir/Location/hl7east) "Health Level Seven International"
* endpoint[0] = Reference(https://fhir.example.org/fhir/Endpoint/Endpoint-71) "Westwood Physicians Organization ADT"
* endpoint[+] = Reference(https://fhir2.example.org//fhir/R4/Endpoint/Endpoint-71) "Brenda.Jennings.Richard.MD@direct.example.org"

Instance: 19c24876-ccf8-45e7-8b66-462317e970f1
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner|6.1.0"
* language = #en
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

Instance: 9838cf73-c30d-4aa5-8ed8-36a079060b81
InstanceOf: AllergyIntolerance
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance|6.1.0"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* category = #medication
* criticality = #high
* code.coding.version = "http://snomed.info/sct/731000124108"
* code.coding = $sct#763875007 "Product containing sulfonamide (product)"
* code.text = "sulfonamide antibacterial"
* patient = Reference(https://fhir.example.org/fhir/Patient/DEF1234) "John Shaw"
* reaction.manifestation.coding.version = "http://snomed.info/sct/731000124108"
* reaction.manifestation.coding = $sct#271807003 "skin rash"
* reaction.manifestation.text = "skin rash"
* reaction.severity = #mild

Instance: 8039e4a7-d459-454c-92a5-6c17ca2a824b
InstanceOf: Condition
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns"
* extension.url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
* extension.valueDateTime = "2016-08-10"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $condition-category#problem-list-item "Problem List Item"
* category.text = "Problem List Item"
* code = $sct#51868009 "Ulcer of duodenum (disorder)"
* code.text = "Active Duodenal Ulcer"
* subject = Reference(https://fhir.example.org/fhir/Patient/DEF1234) "John Shaw"
* recordedDate = "2016-08-10T07:15:07-08:00"

Instance: f8ab8ac1-56d1-4239-8303-dc70c1a3d0e1
InstanceOf: Condition
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns"
* extension.url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
* extension.valueDateTime = "2016-08-10"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $condition-category#problem-list-item "Problem List Item"
* category.text = "Problem List Item"
* code = $sct#44054006 "Diabetes mellitus type 2 (disorder)"
* code.text = "Diabetes mellitus type 2 (disorder)"
* subject = Reference(https://fhir.example.org/fhir/Patient/DEF1234) "John Shaw"
* recordedDate = "2016-08-10T07:15:07-08:00"

Instance: c3d31980-2a88-45b6-a7af-3fe8d32cc6fa
InstanceOf: MedicationRequest
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest"
* status = #active
* intent = #order
* medicationCodeableConcept = $rxnorm#582620 "Nizatidine 15 MG/ML Oral Solution [Axid]"
* medicationCodeableConcept.text = "Nizatidine 15 MG/ML Oral Solution [Axid]"
* subject = Reference(https://fhir.example.org/fhir/Patient/DEF1234) "Amy Shaw"
* authoredOn = "2008-04-05"
* requester = Reference(https://fhir.example.org/fhir/Practitioner/practitioner-1) "Ronald Bone, MD"
* reasonCode = $sct#51868009 "Ulcer of duodenum (disorder)"
* reasonCode.text = "Active Duodenal Ulcer"
* dosageInstruction.text = "10 mL bid"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2008-04-05"
* dosageInstruction.timing.repeat.frequency = 2
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 10 'mL' "ml"
* dispenseRequest.numberOfRepeatsAllowed = 1
* dispenseRequest.quantity = 480 'mL' "mL"
* dispenseRequest.expectedSupplyDuration = 30 'd' "days"

Instance: 17b5a6d7-307b-4726-8c8c-0031e61582ce
InstanceOf: Immunization
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization"
* status = #completed
* vaccineCode = $cvx#197 "Influenza, high-dose, quadrivalent, PF"
* vaccineCode.text = "Influenza, high-dose, quadrivalent, PF"
* patient = Reference(https://fhir.example.org/fhir/Patient/DEF1234) "John Shaw"
* occurrenceDateTime = "2020-11-19T12:46:57-08:00"
* primarySource = false

Instance: b0187efd-5f9b-474d-87bc-efebf877449a
InstanceOf: Observation
Usage: #inline
* meta.versionId = "914"
* meta.lastUpdated = "2016-03-09T15:29:57.277+00:00"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* category.text = "Laboratory"
* code = $loinc#2951-2 "Sodium SerPl-sCnc"
* code.text = "Sodium SerPl-sCnc"
* subject = Reference(https://fhir.example.org/fhir/Patient/DEF1234) "John Shaw"
* effectiveDateTime = "2005-07-05"
* valueQuantity.value = 137
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "mmol/L"
* specimen = Reference(https://fhir.example.org/fhir/Specimen/specimen-example-serum) "Serum specimen"
* referenceRange.low = 135 'mmol/L' "mmol/L"
* referenceRange.high = 145 'mmol/L' "mmol/L"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"

Instance: fb04f2f5-d5b6-4031-85e9-547c78deb658
InstanceOf: Procedure
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure|6.1.0"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b2a737f2-2fdb-49c1-b097-dac173d07aff"
* basedOn = Reference(https://fhir.example.org/fhir/ServiceRequest/34c2af5e-14e3-41c0-9f65-4e5128e48e47)
* status = #completed
* code = $cpt#33249
* code.text = "Insertion or replacement of permanent implantable defibrillator system with transvenous lead(s), single or dual chamber"
* subject = Reference(https://fhir.example.org/fhir/Patient/DEF1234)
* performedPeriod.start = "2019-03-26T12:55:26-07:00"
* performedPeriod.end = "2019-03-26T13:25:26-07:00"
* performer.actor = Reference(https://fhir.example.org/fhir/Practitioner/19c24876-ccf8-45e7-8b66-462317e970f1)
* focalDevice.manipulated = Reference(https://fhir.example.org/fhir/Device/udi-2)

Instance: e8be20b8-6f24-4204-8eca-6bc8ecd2b26b
InstanceOf: Encounter
Usage: #inline
* meta.lastUpdated = "2024-01-28T16:06:21-08:00"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter|6.1.0"
* extension.url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-interpreter-needed"
* extension.valueCoding = $sct#373066001
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* type = $cpt#99211
* type.text = "Office Visit"
* subject = Reference(https://fhir.example.org/fhir/Patient/DEF1234)
* period.start = "2015-11-01T17:00:14-05:00"
* period.end = "2015-11-01T18:00:14-05:00"
* location.location = Reference(https://fhir.example.org/fhir/Location/hospital) "Holy Family Hospital"

Instance: e11bfacd-557d-416b-bb7f-165afc68bca0
InstanceOf: Encounter
Usage: #inline
* meta.lastUpdated = "2024-01-28T16:06:21-08:00"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter|6.1.0"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* type = $sct#261665006 "Unknown (qualifier value)"
* type.text = "Hospitalization"
* subject = Reference(https://fhir.example.org/fhir/Patient/DEF1234)
* hospitalization.dischargeDisposition = $PatDischargeStatus#01 "Discharged to Home"
* location.location = Reference(https://fhir.example.org/fhir/Location/hospital) "Holy Family Hospital"