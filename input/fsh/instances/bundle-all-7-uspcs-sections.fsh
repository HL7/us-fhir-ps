Instance: US-PCS-Bundle-All-7-Sections
InstanceOf: Bundle-us-pcs
Usage: #example
* language = #en-US
* identifier.system = "https://example.org/fhir/identifier/bundle-id"
* identifier.value = "ac7a747c-a2c9-493c-ba39-4ac6997eed1e"
* type = #document
* timestamp = "2026-03-21T18:53:00.8116604+00:00"
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
* entry[+].fullUrl = "https://fhir.example.org/fhir/MedicationRequest/c3d31980-2a88-45b6-a7af-3fe8d32cc6fb"
* entry[=].resource = c3d31980-2a88-45b6-a7af-3fe8d32cc6fb
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
* identifier.system = "https://example.org/fhir/identifier/composition-id"
* identifier.value = "ac7a747c-a2c9-493c-ba39-4ac6997eed1e"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* subject.reference = "https://fhir.example.org/fhir/Patient/DEF1234"
* date = "2026-03-21T18:53:00.8116604+00:00"
* author.reference = "https://fhir.example.org/fhir/Organization/8dcf67a5-b677-4c4f-94c6-a4cf41c9a522"
* title = "US Patient Care Summary"
* confidentiality = #N
* attester.mode = #professional
* attester.time = "2026-03-21T18:53:00.8116604+00:00"
* attester.party.reference = "https://fhir.example.org/fhir/PractitionerRole/75ed6f24-9a7e-4568-9c05-91b6d4786743"
* custodian.reference = "https://fhir.example.org/fhir/Organization/8dcf67a5-b677-4c4f-94c6-a4cf41c9a522"
* event.code.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* event.code.coding.code =  $v3-ActClass#PCPR
* event.period.end = "2026-03-21T18:53:00.8116604+00:00"
* section[sectionAllergies].extension[0].url = "http://hl7.org/fhir/StructureDefinition/note"
* section[sectionAllergies].extension[=].valueAnnotation.text = "Includes AllergyIntolerance.clinicalStatus of active; Excludes AllergyIntolerance.verificationStatus of entered-in-error"
* section[sectionAllergies].title = "Allergies and Intolerances"
* section[sectionAllergies].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #generated
* section[sectionAllergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div>Includes AllergyIntolerance.clinicalStatus of active; Excludes AllergyIntolerance.verificationStatus of entered-in-error</div><table border=\"1\"><tr><th>Allergy Type</th><th>Substance</th><th>Onset</th><th>Clinical Status</th><th>Verification Status</th><th>Reaction</th></tr><tr id=\"9838cf73-c30d-4aa5-8ed8-36a079060b81\"><td></td><td>sulfonamide antibacterial</td><td></td><td></td><td></td><td>skin rash: mild<br/></td></tr></table></div>"
* section[sectionAllergies].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/textLink"
* section[sectionAllergies].text.extension[=].extension[0].url = "htmlid"
* section[sectionAllergies].text.extension[=].extension[=].valueString = "9838cf73-c30d-4aa5-8ed8-36a079060b81"
* section[sectionAllergies].text.extension[=].extension[+].url = "data"
* section[sectionAllergies].text.extension[=].extension[=].valueUri = "https://fhir.example.org/fhir/AllergyIntolerance/9838cf73-c30d-4aa5-8ed8-36a079060b81"
* section[sectionAllergies].entry.reference = "https://fhir.example.org/fhir/AllergyIntolerance/9838cf73-c30d-4aa5-8ed8-36a079060b81"
* section[sectionProblems].extension[0].url = "http://hl7.org/fhir/StructureDefinition/note"
* section[sectionProblems].extension[=].valueAnnotation.text = "Includes Condition.clinicalStatus of: active, recurrence, relapse or remission; Excludes Condition.verificationStatus of entered-in-error"
* section[sectionProblems].title = "Problem List"
* section[sectionProblems].code = $loinc#11450-4 "Problem list - Reported"
* section[sectionProblems].text.status = #generated
* section[sectionProblems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div>Includes Condition.clinicalStatus of: active, recurrence, relapse or remission; Excludes Condition.verificationStatus of entered-in-error</div><table border=\"1\"><tr><th>Problem</th><th>Onset</th><th>Clinical Status</th><th>Verification Status</th><th>Severity</th></tr><tr id=\"8039e4a7-d459-454c-92a5-6c17ca2a824b\"><td>Cardiac arrhythmia</td><td></td><td>Active</td><td>Confirmed</td><td></td></tr><tr id=\"f8ab8ac1-56d1-4239-8303-dc70c1a3d0e1\"><td>Diabetes mellitus type 2</td><td></td><td>Active</td><td>Confirmed</td><td></td></tr></table></div>"
* section[sectionProblems].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/textLink"
* section[sectionProblems].text.extension[=].extension[0].url = "htmlid"
* section[sectionProblems].text.extension[=].extension[=].valueString = "8039e4a7-d459-454c-92a5-6c17ca2a824b"
* section[sectionProblems].text.extension[=].extension[+].url = "data"
* section[sectionProblems].text.extension[=].extension[=].valueUri = "https://fhir.example.org/fhir/Condition/8039e4a7-d459-454c-92a5-6c17ca2a824b"
* section[sectionProblems].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/textLink"
* section[sectionProblems].text.extension[=].extension[0].url = "htmlid"
* section[sectionProblems].text.extension[=].extension[=].valueString = "f8ab8ac1-56d1-4239-8303-dc70c1a3d0e1"
* section[sectionProblems].text.extension[=].extension[+].url = "data"
* section[sectionProblems].text.extension[=].extension[=].valueUri = "https://fhir.example.org/fhir/Condition/f8ab8ac1-56d1-4239-8303-dc70c1a3d0e1"
* section[sectionProblems].entry[0].reference = "https://fhir.example.org/fhir/Condition/8039e4a7-d459-454c-92a5-6c17ca2a824b"
* section[sectionProblems].entry[+].reference = "https://fhir.example.org/fhir/Condition/f8ab8ac1-56d1-4239-8303-dc70c1a3d0e1"
* section[sectionMedications].extension[0].url = "http://hl7.org/fhir/StructureDefinition/note"
* section[sectionMedications].extension[=].valueAnnotation.text = "Includes MedicationRequest.status of active and MedicationRequest.intent of order or plan. Excludes MedicationRequest.doNotPerform is true"
* section[sectionMedications].title = "Medication Summary"
* section[sectionMedications].code = $loinc#10160-0 "History of Medication use Narrative"
* section[sectionMedications].text.status = #generated
* section[sectionMedications].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div>Includes MedicationRequest.status of active and MedicationRequest.intent of order or plan. Excludes MedicationRequest.doNotPerform is true</div><table border=\"1\"><tr><th>Medication</th><th>Dates</th><th>Dosage-Timing</th><th>Status</th><th>Route</th></tr><tr id=\"c3d31980-2a88-45b6-a7af-3fe8d32cc6fa\"><td>24 HR metoprolol succinate 50 MG Extended Release Oral Tablet</td><td></td><td>active</td><td></td></tr><tr id=\"c3d31980-2a88-45b6-a7af-3fe8d32cc6fb\"><td>500 mg Metformin Oral Tablet</td><td></td><td>active</td><td></td></tr></table></div>"
* section[sectionMedications].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/textLink"
* section[sectionMedications].text.extension[=].extension[0].url = "htmlid"
* section[sectionMedications].text.extension[=].extension[=].valueString = "c3d31980-2a88-45b6-a7af-3fe8d32cc6fa"
* section[sectionMedications].text.extension[=].extension[+].url = "data"
* section[sectionMedications].text.extension[=].extension[=].valueUri = "https://fhir.example.org/fhir/MedicationRequest/c3d31980-2a88-45b6-a7af-3fe8d32cc6fa"
* section[sectionMedications].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/textLink"
* section[sectionMedications].text.extension[=].extension[0].url = "htmlid"
* section[sectionMedications].text.extension[=].extension[=].valueString = "c3d31980-2a88-45b6-a7af-3fe8d32cc6fb"
* section[sectionMedications].text.extension[=].extension[+].url = "data"
* section[sectionMedications].text.extension[=].extension[=].valueUri = "https://fhir.example.org/fhir/MedicationRequest/c3d31980-2a88-45b6-a7af-3fe8d32cc6fb"
* section[sectionMedications].entry[0].reference = "https://fhir.example.org/fhir/MedicationRequest/c3d31980-2a88-45b6-a7af-3fe8d32cc6fa"
* section[sectionMedications].entry[+].reference = "https://fhir.example.org/fhir/MedicationRequest/c3d31980-2a88-45b6-a7af-3fe8d32cc6fb"
* section[sectionImmunizations].extension[0].url = "http://hl7.org/fhir/StructureDefinition/note"
* section[sectionImmunizations].extension[=].valueAnnotation.text = "Includes short-term immunizations within past 24 months. Includes lifetime immunizations with long duration"
* section[sectionImmunizations].title = "Immunizations"
* section[sectionImmunizations].code = $loinc#11369-6 "History of Immunization note"
* section[sectionImmunizations].text.status = #generated
* section[sectionImmunizations].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div>Includes short-term immunizations within past 24 months. Includes lifetime immunizations with long duration</div><table border=\"1\"><tr><th>Vaccine</th><th>Date</th><th>Status</th><th>Lot Number</th></tr><tr id=\"17b5a6d7-307b-4726-8c8c-0031e61582ce\"><td>Influenza, split virus, trivalent, PF</td><td>Nov 19 2020 15:46</td><td>Completed</td><td></td></tr></table></div>"
* section[sectionImmunizations].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/textLink"
* section[sectionImmunizations].text.extension[=].extension[0].url = "htmlid"
* section[sectionImmunizations].text.extension[=].extension[=].valueString = "17b5a6d7-307b-4726-8c8c-0031e61582ce"
* section[sectionImmunizations].text.extension[=].extension[+].url = "data"
* section[sectionImmunizations].text.extension[=].extension[=].valueUri = "https://fhir.example.org/fhir/Immunization/17b5a6d7-307b-4726-8c8c-0031e61582ce"
* section[sectionImmunizations].entry.reference = "https://fhir.example.org/fhir/Immunization/17b5a6d7-307b-4726-8c8c-0031e61582ce"
* section[sectionResults].extension[0].url = "http://hl7.org/fhir/StructureDefinition/note"
* section[sectionResults].extension[=].valueAnnotation.text = "Includes diagnostic reports, laboratory and imaging observations from the past 90 days"
* section[sectionResults].title = "Results"
* section[sectionResults].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[sectionResults].text.status = #generated
* section[sectionResults].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div>Includes diagnostic reports, laboratory and imaging observations from the past 90 days</div><table border=\"1\"><tr><th>Result</th><th>Value</th><th>Date</th><th>Status</th></tr><tr id=\"b0187efd-5f9b-474d-87bc-efebf877449a\"><td>HbA1c</td><td>5.6 %</td><td>Jan 5 2026 20:00</td><td>final</td></tr></table></div>"
* section[sectionResults].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/textLink"
* section[sectionResults].text.extension[=].extension[0].url = "htmlid"
* section[sectionResults].text.extension[=].extension[=].valueString = "b0187efd-5f9b-474d-87bc-efebf877449a"
* section[sectionResults].text.extension[=].extension[+].url = "data"
* section[sectionResults].text.extension[=].extension[=].valueUri = "https://fhir.example.org/fhir/Observation/b0187efd-5f9b-474d-87bc-efebf877449a"
* section[sectionResults].entry.reference = "https://fhir.example.org/fhir/Observation/b0187efd-5f9b-474d-87bc-efebf877449a"
* section[sectionProceduresHx].extension[0].url = "http://hl7.org/fhir/StructureDefinition/note"
* section[sectionProceduresHx].extension[=].valueAnnotation.text = "Includes all major procedures with lasting clinical implications and all procedures from last 90 days"
* section[sectionProceduresHx].title = "History of Procedures"
* section[sectionProceduresHx].code = $loinc#47519-4 "History of Procedures Document"
* section[sectionProceduresHx].text.status = #generated
* section[sectionProceduresHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div>Includes all major procedures with lasting clinical implications and all procedures from last 90 days</div><table border=\"1\"><tr><th>Procedure</th><th>Date</th><th>Status</th></tr><tr id=\"fb04f2f5-d5b6-4031-85e9-547c78deb658\"><td>Insertion or replacement of permanent implantable defibrillator system with transvenous lead(s), single or dual chamber</td><td></td><td>Completed</td></tr></table></div>"
* section[sectionProceduresHx].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/textLink"
* section[sectionProceduresHx].text.extension[=].extension[0].url = "htmlid"
* section[sectionProceduresHx].text.extension[=].extension[=].valueString = "fb04f2f5-d5b6-4031-85e9-547c78deb658"
* section[sectionProceduresHx].text.extension[=].extension[+].url = "data"
* section[sectionProceduresHx].text.extension[=].extension[=].valueUri = "https://fhir.example.org/fhir/Procedure/fb04f2f5-d5b6-4031-85e9-547c78deb658"
* section[sectionProceduresHx].entry.reference = "https://fhir.example.org/fhir/Procedure/fb04f2f5-d5b6-4031-85e9-547c78deb658"
* section[sectionEncounters].extension[0].url = "http://hl7.org/fhir/StructureDefinition/note"
* section[sectionEncounters].extension[=].valueAnnotation.text = "Include all emergency room and inpatient encounters in the past 12 months. Include all ambulatory encounters in the past 6 months"
* section[sectionEncounters].title = "Encounters"
* section[sectionEncounters].text.status = #generated
* section[sectionEncounters].code = $loinc#46240-8 "History of Hospitalizations+Outpatient visits Narrative"
* section[sectionEncounters].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div>Includes all emergency room and inpatient encounters in the past 12 months. Includes all ambulatory encounters in the past 6 months</div><table border=\"1\"><tr><th>Encounter Type</th><th>Description</th><th>Date</th><th>Location</th></tr><tr id=\"e8be20b8-6f24-4204-8eca-6bc8ecd2b26b\"><td>Ambulatory</td><td>Office Visit</td><td>2026-03-17</td><td>HL7 East Ambulatory</td></tr><tr id=\"e11bfacd-557d-416b-bb7f-165afc68bca0\"><td>Inpatient</td><td>Hospitalization</td><td>2026-01-17 to 2026-01-20</td><td>Holy Family Hospital</td></tr></table></div>"
* section[sectionEncounters].text.extension[0].url = "http://hl7.org/fhir/StructureDefinition/textLink"
* section[sectionEncounters].text.extension[=].extension[0].url = "htmlid"
* section[sectionEncounters].text.extension[=].extension[=].valueString = "e8be20b8-6f24-4204-8eca-6bc8ecd2b26b"
* section[sectionEncounters].text.extension[=].extension[+].url = "data"
* section[sectionEncounters].text.extension[=].extension[=].valueUri = "https://fhir.example.org/fhir/Encounter/e8be20b8-6f24-4204-8eca-6bc8ecd2b26b"
* section[sectionEncounters].text.extension[+].url = "http://hl7.org/fhir/StructureDefinition/textLink"
* section[sectionEncounters].text.extension[=].extension[0].url = "htmlid"
* section[sectionEncounters].text.extension[=].extension[=].valueString = "e11bfacd-557d-416b-bb7f-165afc68bca0"
* section[sectionEncounters].text.extension[=].extension[+].url = "data"
* section[sectionEncounters].text.extension[=].extension[=].valueUri = "https://fhir.example.org/fhir/Encounter/e11bfacd-557d-416b-bb7f-165afc68bca0"
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
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-individual-sex"
* extension[=].valueCoding = $sct#248153007 "Male"
* identifier.use = #usual
* identifier.type = $v2-0203#MR "Medical Record Number"
* identifier.type.text = "Medical Record Number"
* identifier.system = "https://example.org/fhir/identifier/medical-record-number"
* identifier.value = "3104721"
* active = true
* name.use = #usual
* name.family = "Shaw"
* name.given = "John"
* name.period.start = "1986-02-21"
* telecom[0].system = #phone
* telecom[=].value = "555-555-5555"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "john.shaw@example.com"
* gender = #male
* birthDate = "1986-02-21"
* address[0].use = #home
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
* active = true
* type = $organization-type#prov "Healthcare Provider"
* name = "Acme Clinic"
* telecom[0].system = #phone
* telecom[=].value = "(+1) 413-677-7777"
* telecom[+].system = #email
* telecom[=].value = "customer-service@acme-clinic.org"
* address.line = "3300 WASHTENAW AVE STE 227"
* address.city = "AMHERST"
* address.state = "MA"
* address.postalCode = "01002"
* address.country = "US"

Instance: 75ed6f24-9a7e-4568-9c05-91b6d4786743
InstanceOf: PractitionerRole
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole|6.1.0"
* practitioner = Reference(https://fhir.example.org/fhir/Practitioner/19c24876-ccf8-45e7-8b66-462317e970f1) "Brenda Jennings Richard MD"
* organization = Reference(https://fhir.example.org/fhir/Organization/acme-lab) "Acme Lab"
* code.coding[0] = $v3-ParticipationFunction#PCP "primary care physician"
* code.coding[+] = $sct#446050000 "Primary care physician"
* specialty = $sct#419772000 "Family practice"
* location = Reference(https://fhir.example.org/fhir/Location/hl7east) "Health Level Seven International"
* endpoint[0] = Reference(https://fhir1.example.org/fhir/Endpoint/Endpoint-71) "Westwood Physicians Organization ADT"
* endpoint[+] = Reference(https://fhir2.example.org/fhir/R4/Endpoint/Endpoint-71) "Brenda.Jennings.Richard.MD@direct.example.org"

Instance: 19c24876-ccf8-45e7-8b66-462317e970f1
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner|6.1.0"
* language = #en
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "9941339100"
* name.family = "Jennings Richard"
* name.given = "Brenda"
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
* code = $sct#698247007 "Cardiac arrhythmia"
* code.text = "Cardiac arrhythmia"
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
* medicationCodeableConcept = $rxnorm#866436 "24 HR metoprolol succinate 50 MG Extended Release Oral Tablet"
* medicationCodeableConcept.coding[+] = http://www.whocc.no/atc#C07AB02 "metoprolol"
* medicationCodeableConcept.text = "24 HR metoprolol succinate 50 MG Extended Release Oral Tablet"
* subject = Reference(https://fhir.example.org/fhir/Patient/DEF1234) "John Shaw"
* authoredOn = "2026-03-01"
* requester = Reference(https://fhir.example.org/fhir/Practitioner/practitioner-1) "Ronald Bone, MD"
* reasonCode = $sct#698247007 "Cardiac arrhythmia"
* reasonCode.text = "Cardiac arrhythmia"
* dosageInstruction.text = "1 tab daily"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2026-03-01"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity = 1 '{tbl}' "tbl"
* dispenseRequest.numberOfRepeatsAllowed = 1
* dispenseRequest.quantity = 30 '{tbl}' "tbl"
* dispenseRequest.expectedSupplyDuration = 30 'd' "days"

Instance: c3d31980-2a88-45b6-a7af-3fe8d32cc6fb
InstanceOf: MedicationRequest
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest"
* status = #active
* intent = #order
* reportedBoolean = false
* medicationCodeableConcept = $rxnorm#861007 "metformin hydrochloride 500 MG Oral Tablet"
* medicationCodeableConcept.coding[+] = http://www.whocc.no/atc#A10BA02 "metformin"
* medicationCodeableConcept.text = "metformin hydrochloride 500 MG Oral Tablet"
* subject = Reference(https://fhir.example.org/fhir/Patient/DEF1234) "John Shaw"
* authoredOn = "2026-03-01"
* requester = Reference(https://fhir.example.org/fhir/Practitioner/practitioner-1) "Ronald Bone, MD"
* reasonCode = $sct#44054006 "Diabetes mellitus type 2"
* reasonCode.text = "Type 2 diabetes mellitus"
* dosageInstruction.text = "Take 1 tablet by mouth twice daily with meals"
* dosageInstruction.timing.repeat.boundsPeriod.start = "2026-03-01"
* dosageInstruction.timing.repeat.frequency = 2
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.route = $sct#26643006 "Oral route"
* dosageInstruction.doseAndRate.doseQuantity = 1 '{tbl}' "tbl"
* dispenseRequest.numberOfRepeatsAllowed = 1
* dispenseRequest.quantity = 60 '{tbl}' "tbl"
* dispenseRequest.expectedSupplyDuration = 30 'd' "days"

Instance: 17b5a6d7-307b-4726-8c8c-0031e61582ce
InstanceOf: Immunization
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization"
* status = #completed
* vaccineCode = http://hl7.org/fhir/sid/cvx#140 "Influenza, split virus, trivalent, PF"
* vaccineCode.coding[+] = http://www.whocc.no/atc#J07BB02 "Influenza, inactivated, split virus or surface antigen"
* vaccineCode.coding[+] = http://snomed.info/sct#1181000221105 "Influenza virus antigen only vaccine product"
* vaccineCode.text = "Influenza, split virus, trivalent, PF"
* patient = Reference(https://fhir.example.org/fhir/Patient/DEF1234) "John Shaw"
* occurrenceDateTime = "2025-11-19T12:46:57-08:00"
* primarySource = false

Instance: b0187efd-5f9b-474d-87bc-efebf877449a
InstanceOf: Observation
Usage: #inline
* meta.versionId = "914"
* meta.lastUpdated = "2026-01-05T15:29:57.277+00:00"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* category.text = "Laboratory"
* code = $loinc#4548-4 "Hemoglobin A1c/Hemoglobin.total in Blood"
* code.text = "HbA1c"
* subject = Reference(https://fhir.example.org/fhir/Patient/DEF1234) "John Shaw"
* effectiveDateTime = "2026-01-05"
* performer = Reference(https://fhir.example.org/fhir/Practitioner/practitioner-1) "Ronald Bone, MD"
* valueQuantity.value = 5.6
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "%"
* referenceRange.low = 0 '%' "%"
* referenceRange.high = 5.8 '%' "%"
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
* code.coding[+] = $sct#428555003 "Transvenous implantation of automatic cardiac defibrillator (procedure)"
* code.text = "Insertion or replacement of permanent implantable defibrillator system with transvenous lead(s), single or dual chamber"
* subject = Reference(https://fhir.example.org/fhir/Patient/DEF1234)
* performedPeriod.start = "2019-03-26T12:55:26-07:00"
* performedPeriod.end = "2019-03-26T13:25:26-07:00"
* focalDevice.manipulated = Reference(https://fhir.example.org/fhir/Device/udi-2)

Instance: e8be20b8-6f24-4204-8eca-6bc8ecd2b26b
InstanceOf: Encounter
Usage: #inline
* meta.lastUpdated = "2026-03-17T18:06:21-08:00"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter|6.1.0"
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* type = $cpt#99211 "Office or other outpatient visit for the evaluation and management of an established patient that may not require the presence of a physician"
* type.coding[+] = $sct#390906007 "Follow-up encounter (procedure)"
* type.text = "Office Visit"
* subject = Reference(https://fhir.example.org/fhir/Patient/DEF1234)
* period.start = "2026-03-17T17:00:14-05:00"
* period.end = "2026-03-17T18:00:14-05:00"
* location.location = Reference(https://fhir.example.org/fhir/Location/hl7east) "HL7 East Ambulatory"

Instance: e11bfacd-557d-416b-bb7f-165afc68bca0
InstanceOf: Encounter
Usage: #inline
* meta.lastUpdated = "2024-01-28T16:06:21-08:00"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter|6.1.0"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* type = $sct#83362003 "Final inpatient visit with instructions at discharge"
* type.text = "Hospitalization"
* subject = Reference(https://fhir.example.org/fhir/Patient/DEF1234)
* period.start = "2026-01-17T17:00:14-05:00"
* period.end = "2026-01-20T18:00:14-05:00"
* location.location = Reference(https://fhir.example.org/fhir/Location/hospital) "Holy Family Hospital"