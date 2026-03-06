Profile: BundleUsPcs
Parent: ClinicalDocumentBundle
Id: Bundle-us-pcs
Title: "Bundle (US-PCS)"
Description: "This profile represents the constraints applied to the Bundle resource by the United States Patient Care Summary (US-PCS) FHIR Implementation Guide. The Bundle is of type document and outlines resources that may be commonly included, but the specific organization of US-PCS sections and document information is contained in the US-PCS [Composition profile](./StructureDefinition-Composition-us-pcs.html)."
* ^date = "2026-01-28T10:50:07-05:00"
* ^publisher = "HL7 International / Cross-Group Projects"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/structure"
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
    observation-results-laboratory-pathology 0..* and
    observation-results-radiology 0..* and
    organization 0..* 
* entry[clinical-document-composition].resource only CompositionUsPcs
* entry[patient].resource 1..
* entry[patient].resource only us-core-patient
* entry[allergyintolerance].resource 1..
* entry[allergyintolerance].resource only us-core-allergyintolerance
* entry[condition].resource 1..
* entry[condition].resource only us-core-condition-problems-health-concerns
* entry[diagnosticreport].resource 1..
* entry[diagnosticreport].resource only us-core-diagnosticreport-lab
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
* entry[observation-results-laboratory-pathology].resource 1..
* entry[observation-results-laboratory-pathology].resource only us-core-observation-lab
* entry[observation-results-radiology].resource 1..
* entry[observation-results-radiology].resource only us-core-observation-clinical-result
* signature 0..1 MS