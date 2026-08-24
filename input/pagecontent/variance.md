<style>
td, th {
   border: 1px solid black!important;
   max-width:500px;
}

table {
   width:100%
}
</style>

## US Variance to IPS

The US-PCS conforms with the IPS but it does not derive its Bundle or Composition profiles from the IPS. Only six sections of the IPS are profiled in US-PCS (with one new Encounters section available not from IPS), but resource expectations draw primarily from US Core rather than IPS clinical profiles. 

### US Variance in Must Support, Obligation and Actors

The US-PCS guide does not use the Must Support definition through obligations as defined in the [IPS Implementation Guide](https://hl7.org/fhir/uv/ips//Must-Support-and-Obligations.html). 

In addition, the terms US-PCS Document Creator and US-PCS Document Consumer used in this guide share similarities with [IPS Creator](https://hl7.org/fhir/uv/ips//ActorDefinition-Creator.html) and [IPS Consumer](https://hl7.org/fhir/uv/ips//ActorDefinition-Consumer.html) but do not use obligations as provided in the IPS Implementation Guide. Notably, Must Support elements in US-PCS means capable to populate and there are no display system requirements in US-PCS. 

### US Variance in Sections

There are no variances in the cardinality of IPS mandatory sections (i.e. Allergies, Problem and Medications).

For "recommended" sections in IPS where support is specified through obligations, the following changes have been introduced: 

- The US-PCS Immunizations, Procedures, and Results sections have been flagged as ["Must Support" as defined in US-PCS](./general-guidance.html#must-support-elements) which varies from the obligations defined in IPS
- The US-PCS has removed Must Support from the Medical Devices section, which is considered optional and not profiled in this guide

All other "optional" sections in IPS are not profiled in this guide, although resources from US Core resources have been recommended for use when available. 

Finally the US-PCS introduces an "Encounters" section to its [Composition profile](./StructureDefinition-Composition-us-pcs.html). This section contains the same Must Support flags as the sections of Immunizations, Procedures, and Results.

### US Core Profile Variances to IPS Profiles

The following provides a comparison of US Core 6.1.0 clinical profiles to IPS 2.0.1 clinical profiles for all the mandatory and Must Support sections of US-PCS. Note that IPS and US Core profile links refer to the most recent published version and that the following design conventions were applied in these tables in these tables: 

- US Core and IPS vary in the definition of [Must Support in US Core](https://hl7.org/fhir/us/core/must-support.html) and [Must Support/Obligations in IPS](https://hl7.org/fhir/uv/ips/Must-Support-and-Obligations.html). MustSupport/obligations definitional differences are not included in table below, although it is indictated where one guide includes the MustSupport flag but the other does not
-  CodeableConcepts within IPS use a specialized [CodeableConcept IPS DataType](https://hl7.org/fhir/uv/ips/en/StructureDefinition-CodeableConcept-uv-ips.html). For simplicity, differences in this datatype are not repeated for every profile. Implementers can consider wherever CodeableConcept is used. Specifically: 
   - IPS places MustSupport/Obligations `CodeableConcept.coding.code` and `CodeableConcept.coding.system`
   - IPS places MustSupport/Obligations `CodeableConcept.text`
   - IPS includes the [language translation extension](https://hl7.org/fhir/extensions/5.3.0/StructureDefinition-translation.html) within [CodeableConcept](https://hl7.org/fhir/uv/ips/en/StructureDefinition-CodeableConcept-uv-ips.html) and [Coding](https://hl7.org/fhir/uv/ips/en/StructureDefinition-Coding-uv-ips.html) datatype
- IPS universally includes the `patient.reference` or `subject.reference` element in its clinical profiles, while US Core does not specify that reference must be included. These differences are shown due to the cardinaliity variance.  
- Differences in element or extension inclusion are shown, even when optional
- Differences in terminology bindings are included, even when example or preferred

#### AllergyIntolerance

| Resource Elements | US Core Profile ([AllergyIntolerance](https://hl7.org/fhir/us/core/StructureDefinition-us-core-allergyintolerance.html)) | IPS Clinical Profile ([AllergyIntolerance](https://hl7.org/fhir/uv/ips//StructureDefinition/AllergyIntolerance-uv-ips.html)) |
| --- | --- | --- |
| `AllergyIntolerance.extension[abatement]` | not included | 0..1 [extension](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-allergyintolerance-abatement.html) inclusion |
| `AllergyIntolerance.verificationStatus` | Must Support: `true` | Must Support/Obligations: `false` |
| `AllergyIntolerance.type` | Must Support: `false` | Must Support/Obligations: `true` |
| `AllergyIntolerance.code.coding.system` | ValueSet: [Common substances for allergy and intolerance documentation including refutations (extensible)](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1186.8/expansion) | ValueSet: [Allergies & Intolerances - IPS (preferred)](https://hl7.org/fhir/uv/ips/ValueSet-allergies-intolerances-uv-ips.html) |
| `AllergyIntolerance.patient.reference` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `AllergyIntolerance.onset[x]` | Must Support: `false` | Must Support/Obligations: `true` |
| `AllergyIntolerance.reaction.manifestation` | ValueSet: [SNOMEDCTClinicalFindings (extensible)](http://hl7.org/fhir/R4/valueset-clinical-findings.html) | ValueSet: [Allergy Reaction - IPS (preferred)](https://hl7.org/fhir/uv/ips/ValueSet-allergy-reaction-uv-ips.html) |
| `AllergyIntolerance.reaction.severity` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |

#### Condition

| Resource Elements | US Core Profile ([Condition Problems and Health Concerns](https://hl7.org/fhir/us/core/StructureDefinition-us-core-condition-problems-health-concerns.html)) | IPS Clinical Profile ([Condition](https://hl7.org/fhir/uv/ips//StructureDefinition/Condition-uv-ips.html)) |
| --- | --- | --- |
| `Condition.extension[assertedDate]` | 0..1 included [extension](https://hl7.org/fhir/R4/extension-condition-asserteddate.html); Must Support: `true` | not included; Must Support/Obligations: `false` |
| `Condition.verificationStatus` | Must Support: `true` | Must Support/Obligations: `false` |
| `Condition.category` | Mininum Cardinality: `1` | Mininum Cardinality: `0`  |
| `Condition.category.coding.system` | ValueSet: [US Core Problem or Health Concern (required)](https://hl7.org/fhir/us/core/ValueSet-us-core-problem-or-health-concern.html) or [US Core Screening Assessment Condition Category (required)](https://hl7.org/fhir/us/core/STU6.1/ValueSet-us-core-screening-assessment-condition-category.html) | ValueSet: [ProblemTypeUvIPS (extensible)](https://hl7.org/fhir/uv/ips/en/ValueSet-problem-type-uv-ips.html) |
| `Condition.severity` | Must Support: `false` | Must Support/Obligations: `true` |
| `Condition.code` | ValueSet: [US Core Condition Codes (extensible)](https://hl7.org/fhir/us/core/ValueSet-us-core-condition-code.html) | ValueSet: [ProblemsUvIps (preferred)](https://hl7.org/fhir/uv/ips/en/ValueSet-problems-uv-ips.html) |
| `Condition.subject.reference` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `Condition.abatement[dateTime]` | Must Support: `true` | Must Support/Obligations: `false` |
| `Condition.recordedDate` | Must Support: `true` | Must Support/Obligations: `false` |

#### DiagnosticReport

| Resource Elements | US Core Profile ([DiagnosticReport for Laboratory Results Reporting](https://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport-lab.html)) | IPS Clinical Profile ([DiagnosticReport](https://hl7.org/fhir/uv/ips//StructureDefinition/DiagnosticReport-uv-ips.html)) |
| --- | --- | --- |
| `DiagnosticReport.status` | ValueSet: [DiagnosticReportStatus (required)](http://hl7.org/fhir/R4/valueset-diagnostic-report-status.html) | ValueSet: [DiagnosticReportStatusIvIps (required)](https://hl7.org/fhir/uv/ips/en/ValueSet-diagnostics-report-status-uv-ips.html)
| `DiagnosticReport.category` | Minimum cardinality: `1` | Minimum cardinality: `0`|
| `DiagnosticReport.code.coding.system` | ValueSet: [US Core Laboratory Test Codes (extensible)](https://hl7.org/fhir/us/core/ValueSet-us-core-laboratory-test-codes.html)  | ValueSet: [LOINCDiagnosticReportCodes (preferred)](https://hl7.org/fhir/R4/valueset-report-codes.html) |
| `DiagnosticReport.subject.reference` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `DiagnosticReport.effective[x]` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `DiagnosticReport.issued` | Must Support: `true` |  Must Support/Obligations: `false` |

#### Encounter
| Resource Elements | US Core Profile ([Encounter](https://hl7.org/fhir/us/core/StructureDefinition-us-core-encounter.html)) | No IPS Profile ([Base FHIR R4 Encounter](https://hl7.org/fhir/R4/encounter.html)) |
| --- | --- | --- |
| `Encounter.identifier` | Must Support: `true` | Must Support/Obligations: `false` |
| `Encounter.status` | Must Support: `true` | Must Support/Obligations: `false` |
| `Encounter.class` | Must Support: `true` | Must Support/Obligations: `false` |
| `Encounter.type` | Minimum cardinality: `1` | Minimum cardinality: `0`  |
| `Encounter.type` | Must Support: `true` | Must Support/Obligations: `false` |
| `Encounter.subject` | Minimum cardinality: `1` | Minimum cardinality: `0`  |
| `Encounter.subject` | Must Support: `true` | Must Support/Obligations: `false` |
| `Encounter.participant` | Must Support: `true` | Must Support/Obligations: `false` |
| `Encounter.period` | Must Support: `true` | Must Support/Obligations: `false` |
| `Encounter.reasonCode` | Must Support: `true` | Must Support/Obligations: `false` |
| `Encounter.reasonReference` | Must Support: `true` | Must Support/Obligations: `false` |
| `Encounter.hospitalization` | Must Support: `true` | Must Support/Obligations: `false` |
| `Encounter.location` | Must Support: `true` | Must Support/Obligations: `false` |
| `Encounter.serviceProvider` | Must Support: `true` | Must Support/Obligations: `false` |

#### Immunization

| Resource Elements | US Core Profile ([Immunization](https://hl7.org/fhir/us/core/StructureDefinition-us-core-immunization.html)) | IPS Clinical Profile ([Immunization](https://hl7.org/fhir/uv/ips//StructureDefinition/Immunization-uv-ips.html)) |
| --- | --- | --- |
| `Immunization.patient.statusReason` | Must Support: `true` | Must Support/Obligations: `false` |
| `Immunization.vaccineCode.coding.system` | ValueSet: [CVX Vaccines Administered Vaccine Set (extensible)](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1010.6/expansion) | ValueSet: [Vaccines - IPS (preferred)](https://hl7.org/fhir/uv/ips/ValueSet-vaccines-uv-ips.html) |
| `Immunization.patient.reference` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `Immunization.primarySource` | Must Support: `true` | Must Support/Obligations: `true` |
| `Immunization.site` | ValueSet: [Codes for Immunization Site of Administration (example)](https://hl7.org/fhir/R4/valueset-immunization-site.html) | ValueSet: [SNOMED CT Body Structures (preferred)](https://hl7.org/fhir/R4/valueset-body-site.html)
| `Immunization.route` | ValueSet: [Immunization Route Codes (example)](https://hl7.org/fhir/R4/valueset-immunization-route.html) | ValueSet: [SNOMED CT Route Codes (preferred)](https://hl7.org/fhir/R4/valueset-route-codes.html)
| `Immunization.protocolApplied.targetDisease` | ValueSet: [Immunization Target Disease Codes (example)](https://hl7.org/fhir/R4/valueset-immunization-target-disease.html) | ValueSet: [Vaccine Target Diseases - IPS (preferred)](https://hl7.org/fhir/uv/ips/en/ValueSet-target-diseases-uv-ips.html)

#### Medication

| Resource Elements | US Core Profile ([Medication](https://hl7.org/fhir/us/core/StructureDefinition-us-core-medication.html)) | IPS Clinical Profile ([Medication](https://hl7.org/fhir/uv/ips//StructureDefinition/Medication-uv-ips.html)) |
| --- | --- | --- |
| `Medication.code.coding.system` | ValueSet: [Medication Clinical Drug (extensible)](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1010.4/expansion) | ValueSet: [Medications - IPS (preferred)](https://hl7.org/fhir/uv/ips/ValueSet-medication-uv-ips.html) |
| `Medication.form` | Must Support: `false` | Must Support/Obligations: `true` |
| `Medication.ingredient` | Must Support: `false` | Must Support/Obligations: `true` |
| `Medication.ingredient.item[x]` | Must Support: `false` | Must Support/Obligations: `true` |
| `Medication.ingredient.item[x]` | ValueSet: None | ValueSet: [Medicine Active Substances - IPS (preferred)](https://hl7.org/fhir/uv/ips/en/ValueSet-medicine-active-substances-uv-ips.html) |
| `Medication.ingredient.strength` | Must Support: `false` | Must Support/Obligations: `true` |

#### MedicationRequest

| Resource Elements | US Core Profile ([MedicationRequest](https://hl7.org/fhir/us/core/StructureDefinition-us-core-medicationrequest.html)) | IPS Clinical Profile ([MedicationRequest](https://hl7.org/fhir/uv/ips//StructureDefinition-MedicationRequest-uv-ips.html)) |
| --- | --- | --- |
| `MedicationRequest.status` | Must Support: `true` | Must Support/Obligations: `false` |
| `MedicationRequest.intent` | Minimum cardinality: `1` | Minimum cardinality: `0`  |
| `MedicationRequest.intent` | Must Support: `true` | Must Support/Obligations: `false` |
| `MedicationRequest.doNotPerform` | Fixed to `true` or `false` | Fixed to `false` |
| `MedicationRequest.category` | Must Support: `true` | Must Support/Obligations: `false` |
| `MedicationRequest.reported[x]` | Must Support: `true` | Must Support/Obligations: `false` |
| `MedicationRequest.medication[x].coding.system` | ValueSet: [Medication Clinical Drug (extensible)](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1010.4/expansion) | ValueSet: [Medications - IPS (preferre)](https://hl7.org/fhir/uv/ips/ValueSet-medication-uv-ips.html) |
| `MedicationRequest.subject.reference` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `MedicationRequest.encounter` | Must Support: `true` | Must Support/Obligations: `false` |
| `MedicationRequest.authoredOn` | Must Support: `true` | Must Support/Obligations: `false` |
| `MedicationRequest.requester` | Must Support: `true` | Must Support/Obligations: `false` |
| `MedicationRequest.reasonCode` | ValueSet: [US Core Condition Codes (extensible)](https://hl7.org/fhir/us/core/ValueSet-us-core-condition-code.html) | ValueSet: [	Condition/Problem/Diagnosis Codes (example)](http://hl7.org/fhir/R4/valueset-condition-code.html) |
| `MedicationRequest.dosageInstruction.doseAndRate` | Must Support: `true` | Must Support/Obligations: `false` |
| `MedicationRequest.dispenseRequest` | Must Support: `true` | Must Support/Obligations: `false` |


#### Observation: Laboratory/Pathology

| Resource Elements | US Core Profile ([Clinical Result](https://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-clinical-result.html), [Laboratory Result](https://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html)) | IPS Clinical Profile ([Results - Laboratory/Pathology](https://hl7.org/fhir/uv/ips//StructureDefinition/Observation-results-laboratory-pathology-uv-ips.html)) |
| --- | --- | --- |
| `Observation.status` | ValueSet: [observation-status](http://hl7.org/fhir/ValueSet/observation-status) (required) | ValueSet: [results-status-uv-ips](http://hl7.org/fhir/uv/ips/ValueSet/results-status-uv-ips) (required) |
| `Observation.category:laboratory` | [Clinical Result Observation Category](https://hl7.org/fhir/us/core/ValueSet-us-core-clinical-result-observation-category.html) | Fixed binding: `laboratory` |
| `Observation.category.coding` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Observation.category.coding.system` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Observation.category.coding.code` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Observation.category.text` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Observation.code.coding` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Observation.code.coding.system` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Observation.code.coding.system` | ValueSet: [LOINCCodes](http://hl7.org/fhir/R4/valueset-observation-codes.html) | ValueSet: [Results Laboratory/Pathology Observation](https://hl7.org/fhir/uv/ips/ValueSet-results-laboratory-pathology-observations-uv-ips.html) |
| `Observation.code.coding.code` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Observation.code.text` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Observation.subject.reference` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `Observation.effective[x]` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `Observation.performer` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `Observation.valueCodeableConcept.coding` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Observation.valueCodeableConcept.coding.system` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Observation.valueCodeableConcept.coding.code` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Observation.valueCodeableConcept.text` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Observation.component` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |

#### Observation: Radiology

| Resource Elements | US Core Profile ([Clinical Result](https://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-clinical-result.html)) | IPS Clinical Profile ([Results - Radiology](https://hl7.org/fhir/uv/ips//StructureDefinition/Observation-results-radiology-uv-ips.html)) |
| --- | --- | --- |
| `Observation.category:radiology` | Minimum cardinality: `0`; maximum cardinality: `*` | Minimum cardinality: `1`; maximum cardinality: `1` |
| `Observation.category:radiology` | [Clinical Result Observation Category](https://hl7.org/fhir/us/core/ValueSet-us-core-clinical-result-observation-category.html) | Fixed binding: `imaging` |
| `Observation.code.coding` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Observation.code.coding.system` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Observation.code.coding.system` | ValueSet: [LOINCCodes](http://hl7.org/fhir/R4/valueset-observation-codes.html) | ValueSet: [Result Radiology Observation](https://hl7.org/fhir/uv/ips/ValueSet-results-radiology-observations-uv-ips.html) |
| `Observation.code.coding.code` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Observation.code.text` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Observation.subject.reference` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `Observation.effective[x]` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `Observation.performer` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `Observation.component` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |

#### Organization

| Resource Elements | US Core Profile ([Organization](https://hl7.org/fhir/us/core/StructureDefinition-us-core-organization.html)) | IPS Clinical Profile ([Organization](https://hl7.org/fhir/uv/ips//StructureDefinition-Organization-uv-ips.html)) |
| --- | --- | --- |
| No additional requirements in IPS Profile | No differences | No differences |

#### Patient

| Resource Elements | US Core Profile ([Patient](https://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html)) | IPS Clinical Profile ([Patient](https://hl7.org/fhir/uv/ips//StructureDefinition/Patient-uv-ips.html)) |
| --- | --- | --- |
| `Patient.name.use` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Patient.name.text` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Patient.telecom` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Patient.gender` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Patient.birthDate` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `Patient.generalPractitioner` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |

#### Practitioner

| Resource Elements | US Core Profile ([Practitioner](https://hl7.org/fhir/us/core/StructureDefinition-us-core-practitioner.html)) | IPS Clinical Profile ([Practitioner](https://hl7.org/fhir/uv/ips//StructureDefinition/Practitioner-uv-ips.html)) |
| --- | --- | --- |
| `Practitioner.name.given` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |

#### PractitionerRole

| Resource Elements | US Core Profile ([PractitionerRole](https://hl7.org/fhir/us/core/StructureDefinition-us-core-practitionerrole.html)) | IPS Clinical Profile ([PractitionerRole](https://hl7.org/fhir/uv/ips//StructureDefinition/PractitionerRole-uv-ips.html)) |
| --- | --- | --- |
| `PractitionerRole.code` | Binding: [Care Team Member Function](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1099.30/expansion) | Binding: [Healthcare Professional Roles - IPS](https://hl7.org/fhir/uv/ips/ValueSet-healthcare-professional-roles-uv-ips.html) |


#### Procedure

| Resource Elements | US Core Profile ([Procedure](https://hl7.org/fhir/us/core/StructureDefinition-us-core-procedure.html)) | IPS Clinical Profile ([Procedure](https://hl7.org/fhir/uv/ips//StructureDefinition/Procedure-uv-ips.html)) |
| --- | --- | --- |
| `Procedure.code.coding` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Procedure.code.coding.system` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Procedure.code.coding.system` | ValueSet: [US Core Procedure Codes](https://hl7.org/fhir/us/core/ValueSet-us-core-procedure-code.html) | ValueSet: [Procedures - IPS](https://hl7.org/fhir/uv/ips/ValueSet-procedures-uv-ips.html) |
| `Procedure.code.coding.code` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Procedure.code.text` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Procedure.subject.reference` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `Procedure.performed[x]` | Minimum cardinality: `0` | Minimum cardinality: `1` |

#### Specimen

| Resource Elements | US Core Profile ([Specimen](https://hl7.org/fhir/us/core/StructureDefinition-us-core-specimen.html)) | IPS Clinical Profile ([Specimen](https://hl7.org/fhir/uv/ips//StructureDefinition/Specimen-uv-ips.html)) |
| --- | --- | --- |
| `Specimen.type.coding` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Specimen.type.coding.system` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Specimen.type.coding.system` | ValueSet: [Specimen Type](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1099.54/expansion) | ValueSet: [Result Specimen Type - IPS](https://hl7.org/fhir/uv/ips/ValueSet-results-specimen-type-uv-ips.html) |
| `Specimen.type.coding.code` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Specimen.type.text` | Must Support/Obligations: `false` | Must Support/Obligations: `true` |
| `Specimen.subject.reference` | Minimum cardinality: `0` | Minimum cardinality: `1` |


