Profile: BundleUsPcs
Parent: ClinicalDocumentBundle
Id: Bundle-us-pcs
Title: "Bundle (US-PCS)"
Description: "This profile represents the constraints applied to the Bundle resource by the United States Patient Care Summary (US-PCS) FHIR Implementation Guide. The Bundle is of type document and includes resources that may be commonly included in the US-PCS. Readers should refer to the [US-PCS Composition profile](./StructureDefinition-Composition-us-pcs.html) for specific requirements and organization of US-PCS sections and entries. The Bundle profile includes multiple resources beyond required sections to minimize validation messages for unexpected slices in US-PCS documents."
* ^date = "2026-01-28T10:50:07-05:00"
* ^publisher = "HL7 International / Cross-Group Projects"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/cgp"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^purpose = "This profile represents the constraints applied to the Bundle resource by the United States Patient Care Summary (US-PCS) FHIR Implementation Guide. \r\n The Bundle is of type document and outlines resources that may be commonly included, but the specific organization of US-PCS sections and document information is contained in the US-PCS Composition profile."
* obeys bdl-uspcs-1
* entry.fullUrl 1.. 
* entry contains
    patient 1..1 and
    allergyintolerance 0..* and
    condition 0..* and
    diagnosticreport 0..* and
    documentreference 0..* and
    encounter 0..* and
    immunization 0..* and
    medication 0..* and
    medicationrequest 0..* and
    practitioner 0..* and
    practitionerrole 0..* and
    procedure 0..* and
    observation-results 0..* and
    organization 0..* 
* entry[clinical-document-composition].resource only CompositionUsPcs
* entry[patient].resource 1..
* entry[patient].resource only us-core-patient
* entry[allergyintolerance].resource 1..
* entry[allergyintolerance].resource only us-core-allergyintolerance
* entry[condition].resource 1..
* entry[condition].resource only us-core-condition-problems-health-concerns
* entry[diagnosticreport].resource 1..
* entry[diagnosticreport].resource only $us-core-diagnosticreport-lab or $us-core-diagnosticreport-note
* entry[documentreference].resource 1..
* entry[documentreference].resource only us-core-documentreference
* entry[encounter].resource 1..
* entry[encounter].resource only us-core-encounter
* entry[immunization].resource 1..
* entry[immunization].resource only us-core-immunization
* entry[medication].resource 1..
* entry[medication].resource only us-core-medication
* entry[medicationrequest].resource 1..
* entry[medicationrequest].resource only us-core-medicationrequest
* entry[practitioner].resource 1..
* entry[practitioner].resource only us-core-practitioner
* entry[practitionerrole].resource 1..
* entry[practitionerrole].resource only us-core-practitionerrole
* entry[procedure].resource 1..
* entry[procedure].resource only us-core-procedure
* entry[organization].resource 1..
* entry[organization].resource only us-core-organization
* entry[observation-results].resource 1..
* entry[observation-results].resource only Observation or $us-core-observation-clinical-result or $us-core-observation-lab
