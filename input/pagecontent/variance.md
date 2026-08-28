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

The US-PCS guide does not use the Must Support definition through obligations as defined in the [IPS Implementation Guide](https://hl7.org/fhir/uv/ips/Must-Support-and-Obligations.html). 

In addition, the terms US-PCS Document Creator and US-PCS Document Consumer used in this guide share similarities with [IPS Creator](https://hl7.org/fhir/uv/ips/ActorDefinition-Creator.html) and [IPS Consumer](https://hl7.org/fhir/uv/ips/ActorDefinition-Consumer.html) but do not use obligations as provided in the IPS Implementation Guide. Notably, Must Support elements in US-PCS means capable to populate and there are no display system requirements in US-PCS. 

### US Variance in Sections

Each of the IPS mandatory sections (i.e. Allergies, Problems and Medications) is also required in the US-PCS.

For "recommended" IPS sections where support is specified through obligations, the following changes have been introduced: 

- The US-PCS Immunizations, Procedures, and Results sections have been flagged as ["Must Support" as defined in US-PCS](./general-guidance.html#must-support-elements) which varies from the obligations defined in IPS
- The US-PCS has removed Must Support from the Medical Devices section, which is considered optional and not profiled in this guide

All other "optional" sections in IPS are not profiled in this guide, although resources from US Core resources have been [recommended for use](./general-guidance.html#aligning-us-pcs-sections-with-ips-c-cda-and-us-core) when available. 

Finally the US-PCS introduces an "Encounters" section to its [Composition profile](./StructureDefinition-Composition-us-pcs.html). This section contains the same Must Support flags as the sections of Immunizations, Procedures, and Results.

### US Core Profile Variances to IPS Profiles

The following tables provide a comparison of US Core 6.1.0 clinical profiles to IPS 2.0.1 clinical profiles for all the mandatory and Must Support sections of US-PCS. Note that IPS and US Core profile links refer to the most recent published version. The following design conventions were applied in these tables: 

- US Core and IPS vary in the definition of [Must Support in US Core](https://hl7.org/fhir/us/core/must-support.html) and [Must Support/Obligations in IPS](https://hl7.org/fhir/uv/ips/Must-Support-and-Obligations.html). MustSupport/obligations definitional differences are not included in table below, although it is indicated where one guide includes the MustSupport flag but the other does not
-  CodeableConcepts within IPS use a specialized [CodeableConcept IPS DataType](https://hl7.org/fhir/uv/ips/en/StructureDefinition-CodeableConcept-uv-ips.html). For simplicity, differences in this datatype are not repeated for every profile. Implementers are recommended to consider this difference wherever CodeableConcept is used. Specifically: 
   - IPS places MustSupport/Obligations `CodeableConcept.coding.code` and `CodeableConcept.coding.system`
   - IPS places MustSupport/Obligations `CodeableConcept.text`
   - IPS includes the [language translation extension](https://hl7.org/fhir/extensions/5.3.0/StructureDefinition-translation.html) within [CodeableConcept IPS](https://hl7.org/fhir/uv/ips/en/StructureDefinition-CodeableConcept-uv-ips.html) and [Coding IPS](https://hl7.org/fhir/uv/ips/en/StructureDefinition-Coding-uv-ips.html) datatype
- IPS universally includes the `patient.reference` or `subject.reference` element in its clinical profiles, while US Core does not specify that `.reference` must be included. These differences are shown due to the cardinality variance.  
- Differences in element or extension inclusion are shown, focusing on MustSupport and cardinality differences. US Core's [Additional USCDI data elements](https://hl7.org/fhir/us/core/must-support.html#additional-uscdi-requirements) are treated as optional for this comparison
- Differences in terminology bindings are shown

#### US Core AllergyIntolerance (used in US-PCS allergies section)

| Resource Elements | [US Core AllergyIntolerance Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-allergyintolerance.html) | [AllergyIntolerance (IPS)](https://hl7.org/fhir/uv/ips/en/StructureDefinition-AllergyIntolerance-uv-ips.html) |
| --- | --- | --- |
| `AllergyIntolerance.extension[abatement]` | not included | 0..1 [extension](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-allergyintolerance-abatement.html) inclusion |
| `AllergyIntolerance.verificationStatus` | Must Support: `true` | Must Support/Obligations: `false` |
| `AllergyIntolerance.type` | Must Support: `false` | Must Support/Obligations: `true` |
| `AllergyIntolerance.code.coding.system` | ValueSet: [Common substances for allergy and intolerance documentation including refutations (extensible)](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1186.8/expansion) | ValueSet: [Allergies & Intolerances - IPS (preferred)](https://hl7.org/fhir/uv/ips/ValueSet-allergies-intolerances-uv-ips.html) |
| `AllergyIntolerance.patient.reference` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `AllergyIntolerance.onset[x]` | Must Support: `false` | Must Support/Obligations: `true` |
| `AllergyIntolerance.reaction.manifestation` | ValueSet: [SNOMEDCTClinicalFindings (extensible)](http://hl7.org/fhir/R4/valueset-clinical-findings.html) | ValueSet: [Allergy Reaction - IPS (preferred)](https://hl7.org/fhir/uv/ips/ValueSet-allergy-reaction-uv-ips.html) |
| `AllergyIntolerance.reaction.severity` | Must Support: `false` | Must Support/Obligations: `true` |

*US Core resources (used in US-PCS sections) and IPS clinical profiles vary in the definition of [Must Support in US Core](https://hl7.org/fhir/us/core/must-support.html) and [Must Support/Obligations in IPS](https://hl7.org/fhir/uv/ips/Must-Support-and-Obligations.html). MustSupport/obligations definitional differences are not included in table above*

#### US Core Condition Problems and Health Concerns (used in US-PCS problems section)

| Resource Elements | [US Core Condition Problems and Health Concerns Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-condition-problems-health-concerns.html) | [Condition (IPS)](https://hl7.org/fhir/uv/ips/en/StructureDefinition-Condition-uv-ips.html) |
| --- | --- | --- |
| `Condition.extension[assertedDate]` | 0..1 included [extension](https://hl7.org/fhir/R4/extension-condition-asserteddate.html); Must Support: `true` | not included; Must Support/Obligations: `false` |
| `Condition.verificationStatus` | Must Support: `true` | Must Support/Obligations: `false` |
| `Condition.category` | Minimum Cardinality: `1` | Minimum Cardinality: `0`  |
| `Condition.category.coding.system` | ValueSet: [US Core Problem or Health Concern (required)](https://hl7.org/fhir/us/core/ValueSet-us-core-problem-or-health-concern.html) or [US Core Screening Assessment Condition Category (required)](https://hl7.org/fhir/us/core/ValueSet-us-core-screening-assessment-condition-category.html) | ValueSet: [ProblemTypeUvIPS (extensible)](https://hl7.org/fhir/uv/ips/en/ValueSet-problem-type-uv-ips.html) |
| `Condition.severity` | Must Support: `false` | Must Support/Obligations: `true` |
| `Condition.code` | ValueSet: [US Core Condition Codes (extensible)](https://hl7.org/fhir/us/core/ValueSet-us-core-condition-code.html) | ValueSet: [ProblemsUvIps (preferred)](https://hl7.org/fhir/uv/ips/en/ValueSet-problems-uv-ips.html) |
| `Condition.subject.reference` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `Condition.abatement[dateTime]` | Must Support: `true` | Must Support/Obligations: `false` |
| `Condition.recordedDate` | Must Support: `true` | Must Support/Obligations: `false` |

*US Core resources (used in US-PCS sections) and IPS clinical profiles vary in the definition of [Must Support in US Core](https://hl7.org/fhir/us/core/must-support.html) and [Must Support/Obligations in IPS](https://hl7.org/fhir/uv/ips/Must-Support-and-Obligations.html). MustSupport/obligations definitional differences are not included in table above*

#### US Core DiagnosticReport (used in US-PCS results section)

| Resource Elements | [US Core DiagnosticReport Profile for Laboratory Results Reporting](https://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport-lab.html) | [DiagnosticReport (IPS)](https://hl7.org/fhir/uv/ips/en/StructureDefinition-DiagnosticReport-uv-ips.html) |
| --- | --- | --- |
| `DiagnosticReport.status` | ValueSet: [DiagnosticReportStatus (required)](http://hl7.org/fhir/R4/valueset-diagnostic-report-status.html) | ValueSet: [Diagnostics Report Status Codes - IPS (required)](https://hl7.org/fhir/uv/ips/en/ValueSet-diagnostics-report-status-uv-ips.html)|
| `DiagnosticReport.category` | Minimum cardinality: `1` | Minimum cardinality: `0`|
| `DiagnosticReport.code.coding.system` | ValueSet: [US Core Laboratory Test Codes (extensible)](https://hl7.org/fhir/us/core/ValueSet-us-core-laboratory-test-codes.html)  | ValueSet: [LOINCDiagnosticReportCodes (preferred)](https://hl7.org/fhir/R4/valueset-report-codes.html) |
| `DiagnosticReport.subject.reference` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `DiagnosticReport.effective[x]` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `DiagnosticReport.issued` | Must Support: `true` |  Must Support/Obligations: `false` |

*US Core resources (used in US-PCS sections) and IPS clinical profiles vary in the definition of [Must Support in US Core](https://hl7.org/fhir/us/core/must-support.html) and [Must Support/Obligations in IPS](https://hl7.org/fhir/uv/ips/Must-Support-and-Obligations.html). MustSupport/obligations definitional differences are not included in table above*

Note that [US Core DiagnosticReport Profile for Report and Note Exchange](https://hl7.org/fhir/us/core/StructureDefinition-us-core-diagnosticreport-note.html) may also be used in US-PCS results sections. This profile changes the `DiagnosticReport.category` ValueSet binding and the `Diagnostic.code.coding.system` ValueSet binding, and adds MustSupport flags to `DiagnosticReport.encounter`, `DiagnosticReport.media` and `Diagnostic.presentedForm`. This profile does not have a direct IPS equivalent so is not compared in the tables on this page. 

#### US Core Encounter (used in US-PCS encounters section)

IPS does not define an Encounter profile. Encounter resources may still appear in IPS instances as referenced supporting resources. When comparing to US Core, all variances would be a comparison of the [US Core Encounter Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-encounter.html) relative to the [Base FHIR R4 Encounter](https://hl7.org/fhir/R4/encounter.html). Those differences can be observed by simply looking at the differential view in the US Core Encounter profile. 

#### US Core Immunization (used in US-PCS immunizations section)

| Resource Elements | [US Core Immunization Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-immunization.html) | [Immunization (IPS)](https://hl7.org/fhir/uv/ips/en/StructureDefinition-Immunization-uv-ips.html) |
| --- | --- | --- |
| `Immunization.statusReason` | Must Support: `true` | Must Support/Obligations: `false` |
| `Immunization.vaccineCode.coding.system` | ValueSet: [CVX Vaccines Administered Vaccine Set (extensible)](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1010.6/expansion) | ValueSet: [Vaccines - IPS (preferred)](https://hl7.org/fhir/uv/ips/ValueSet-vaccines-uv-ips.html) |
| `Immunization.patient.reference` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `Immunization.primarySource` | Must Support: `true` | Must Support/Obligations: `false` |
| `Immunization.site` | ValueSet: [Codes for Immunization Site of Administration (example)](https://hl7.org/fhir/R4/valueset-immunization-site.html) | ValueSet: [SNOMED CT Body Structures (preferred)](https://hl7.org/fhir/R4/valueset-body-site.html)|
| `Immunization.route` | ValueSet: [Immunization Route Codes (example)](https://hl7.org/fhir/R4/valueset-immunization-route.html) | ValueSet: [SNOMED CT Route Codes (preferred)](https://hl7.org/fhir/R4/valueset-route-codes.html)|
| `Immunization.protocolApplied.targetDisease` | ValueSet: [Immunization Target Disease Codes (example)](https://hl7.org/fhir/R4/valueset-immunization-target-disease.html) | ValueSet: [Vaccine Target Diseases - IPS (preferred)](https://hl7.org/fhir/uv/ips/en/ValueSet-target-diseases-uv-ips.html)|

*US Core resources (used in US-PCS sections) and IPS clinical profiles vary in the definition of [Must Support in US Core](https://hl7.org/fhir/us/core/must-support.html) and [Must Support/Obligations in IPS](https://hl7.org/fhir/uv/ips/Must-Support-and-Obligations.html). MustSupport/obligations definitional differences are not included in table above*

#### US Core Medication (used through references in US-PCS medications section)

| Resource Elements | [US Core Medication Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-medication.html) | [Medication (IPS)](https://hl7.org/fhir/uv/ips/en/StructureDefinition-Medication-uv-ips.html) |
| --- | --- | --- |
| `Medication.code.coding.system` | ValueSet: [Medication Clinical Drug (extensible)](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1010.4/expansion) | ValueSet: [Medications - IPS (preferred)](https://hl7.org/fhir/uv/ips/ValueSet-medication-uv-ips.html) |
| `Medication.form` | Must Support: `false` | Must Support/Obligations: `true` |
| `Medication.ingredient` | Must Support: `false` | Must Support/Obligations: `true` |
| `Medication.ingredient.item[x]` | Must Support: `false` | Must Support/Obligations: `true` |
| `Medication.ingredient.item[x]` | ValueSet: None | ValueSet: [Medicine Active Substances - IPS (preferred)](https://hl7.org/fhir/uv/ips/en/ValueSet-medicine-active-substances-uv-ips.html) |
| `Medication.ingredient.strength` | Must Support: `false` | Must Support/Obligations: `true` |

*US Core resources (used in US-PCS sections) and IPS clinical profiles vary in the definition of [Must Support in US Core](https://hl7.org/fhir/us/core/must-support.html) and [Must Support/Obligations in IPS](https://hl7.org/fhir/uv/ips/Must-Support-and-Obligations.html). MustSupport/obligations definitional differences are not included in table above*

#### US Core MedicationRequest (used in US-PCS medications section)

| Resource Elements | [US Core MedicationRequest Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-medicationrequest.html) | [MedicationRequest (IPS)](https://hl7.org/fhir/uv/ips/StructureDefinition-MedicationRequest-uv-ips.html) |
| --- | --- | --- |
| `MedicationRequest.status` | Must Support: `true` | Must Support/Obligations: `false` |
| `MedicationRequest.intent` | Must Support: `true` | Must Support/Obligations: `false` |
| `MedicationRequest.doNotPerform` | `true` or `false` | Fixed to `false` |
| `MedicationRequest.category` | Must Support: `true` | Must Support/Obligations: `false` |
| `MedicationRequest.reported[x]` | Must Support: `true` | Must Support/Obligations: `false` |
| `MedicationRequest.medication[x].coding.system` | ValueSet: [Medication Clinical Drug (extensible)](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1010.4/expansion) | ValueSet: [Medications - IPS (preferred)](https://hl7.org/fhir/uv/ips/ValueSet-medication-uv-ips.html) |
| `MedicationRequest.subject.reference` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `MedicationRequest.encounter` | Must Support: `true` | Must Support/Obligations: `false` |
| `MedicationRequest.authoredOn` | Must Support: `true` | Must Support/Obligations: `false` |
| `MedicationRequest.requester` | Must Support: `true` | Must Support/Obligations: `false` |
| `MedicationRequest.reasonCode` | ValueSet: [US Core Condition Codes (extensible)](https://hl7.org/fhir/us/core/ValueSet-us-core-condition-code.html) | ValueSet: [Condition/Problem/Diagnosis Codes (example)](http://hl7.org/fhir/R4/valueset-condition-code.html) |
| `MedicationRequest.dosageInstruction.doseAndRate` | Must Support: `true` | Must Support/Obligations: `false` |
| `MedicationRequest.dispenseRequest` | Must Support: `true` | Must Support/Obligations: `false` |

*US Core resources (used in US-PCS sections) and IPS clinical profiles vary in the definition of [Must Support in US Core](https://hl7.org/fhir/us/core/must-support.html) and [Must Support/Obligations in IPS](https://hl7.org/fhir/uv/ips/Must-Support-and-Obligations.html). MustSupport/obligations definitional differences are not included in table above*

Note that US Core 6.1.0 does not include a MedicationStatement profile to compare against the [IPS MedicationStatement profile](https://hl7.org/fhir/uv/ips/en/StructureDefinition-MedicationStatement-uv-ips.html). Therefore, any variances can be observed by comparing the IPS profile to the [Base R4 MedicationStatement](https://hl7.org/fhir/R4/medicationstatement.html) as available in the IPS differential view.  

#### US Core Laboratory Result Observation (used in US-PCS results section)

| Resource Elements | [US Core Laboratory Result Observation Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-lab.html) | [Observation Results - Laboratory/Pathology (IPS)](https://hl7.org/fhir/uv/ips/en/StructureDefinition-Observation-results-laboratory-pathology-uv-ips.html) |
| --- | --- | --- |
| `Observation.status` | ValueSet: [ObservationStatus (required)](https://hl7.org/fhir/R4/valueset-observation-status.html) | ValueSet: [Results Status Codes - IPS (required)](http://hl7.org/fhir/uv/ips/ValueSet/results-status-uv-ips) |
| `Observation.code.coding.system` | ValueSet: [US Core Laboratory Test Codes (extensible)](https://hl7.org/fhir/us/core/ValueSet-us-core-laboratory-test-codes.html) | ValueSet: [Results Laboratory/Pathology Observation - IPS (preferred)](https://hl7.org/fhir/uv/ips/ValueSet-results-laboratory-pathology-observations-uv-ips.html) |
| `Observation.subject.reference` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `Observation.effective[x]` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `Observation.value.CodeableConcept` | ValueSet: None (US Core invariant us-core-4 recommends SNOMED) | ValueSet: [Results Coded Values Laboratory/Pathology - IPS (preferred)](https://hl7.org/fhir/uv/ips/en/ValueSet-results-coded-values-laboratory-pathology-uv-ips.html) |
| `Observation.performer` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `Observation.performer` | Must Support: `false` | Must Support/Obligations: `true` |
| `Observation.specimen` | Must Support: `true` | Must Support/Obligations: `false` |
| `Observation.component` | Must Support: `false` | Must Support/Obligations: `true` |

*US Core resources (used in US-PCS sections) and IPS clinical profiles vary in the definition of [Must Support in US Core](https://hl7.org/fhir/us/core/must-support.html) and [Must Support/Obligations in IPS](https://hl7.org/fhir/uv/ips/Must-Support-and-Obligations.html). MustSupport/obligations definitional differences are not included in table above*

Note that US Core Laboratory Result Observation Profile derives from the [US Core Observation Clinical Result Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-observation-clinical-result.html), which may also be used in US-PCS results sections. This profile has a different `Observation.category` ValueSet binding a different `Observation.code.coding.system` ValueSet binding. This profile does not have a direct IPS equivalent so is not compared in the tables on this page. 

#### US Core Organization (used in US-PCS Composition through references)

| Resource Elements | [US Core Organization Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-organization.html) | [Organization (IPS)](https://hl7.org/fhir/uv/ips/StructureDefinition-Organization-uv-ips.html) |
| --- | --- | --- |
| `Organization.identifier` | Must Support: `true` | Must Support/Obligations: `false` |
| `Organization.active` | Minimum cardinality: `1` | Minimum cardinality: `0` |
| `Organization.active` | Must Support: `true` | Must Support/Obligations: `false` |
| `Organization.telecom.system` | Must Support: `true` | Must Support/Obligations: `false` |
| `Organization.telecom.value` | Must Support: `true` | Must Support/Obligations: `false` |
| `Organization.address.line` | Must Support: `true` | Must Support/Obligations: `false` |
| `Organization.address.city` | Must Support: `true` | Must Support/Obligations: `false` |
| `Organization.address.state` | Must Support: `true` | Must Support/Obligations: `false` |
| `Organization.address.postalCode` | Must Support: `true` | Must Support/Obligations: `false` |
| `Organization.address.country` | Must Support: `true` | Must Support/Obligations: `false` |

*US Core resources (used in US-PCS sections) and IPS clinical profiles vary in the definition of [Must Support in US Core](https://hl7.org/fhir/us/core/must-support.html) and [Must Support/Obligations in IPS](https://hl7.org/fhir/uv/ips/Must-Support-and-Obligations.html). MustSupport/obligations definitional differences are not included in table above*

#### US Core Patient (used in US-PCS Composition and through references)

| Resource Elements | [US Core Patient Profile Patient](https://hl7.org/fhir/us/core/StructureDefinition-us-core-patient.html) | [Patient (IPS)](https://hl7.org/fhir/uv/ips/en/StructureDefinition-Patient-uv-ips.html) |
| --- | --- | --- |
| `Patient.extension` | Optional profiled extensions differ from IPS (multiple) | Optional profiled extensions differ from US Core (multiple) |
| `Patient.identifier` | Minimum cardinality: `1` | Minimum cardinality: `0` |
| `Patient.name.use` | Must Support: `false` | Must Support/Obligations: `true` |
| `Patient.name.text` | Must Support: `false` | Must Support/Obligations: `true` |
| `Patient.telecom` | Must Support: `false` | Must Support/Obligations: `true` |
| `Patient.telecom.system` | Must Support: `true` | Must Support/Obligations: `false` |
| `Patient.telecom.value` | Must Support: `true` | Must Support/Obligations: `false` |
| `Patient.telecom.use` | Must Support: `true` | Must Support/Obligations: `false` |
| `Patient.gender` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `Patient.birthDate` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `Patient.address.line` | Must Support: `true` | Must Support/Obligations: `false` |
| `Patient.address.city` | Must Support: `true` | Must Support/Obligations: `false` |
| `Patient.address.state` | Must Support: `true` | Must Support/Obligations: `false` |
| `Patient.address.postalCode` | Must Support: `true` | Must Support/Obligations: `false` |
| `Patient.generalPractitioner` | Must Support: `false` | Must Support/Obligations: `true` |
| `Patient.communication.language` | Must Support: `true` | Must Support/Obligations: `false` |

*US Core resources (used in US-PCS sections) and IPS clinical profiles vary in the definition of [Must Support in US Core](https://hl7.org/fhir/us/core/must-support.html) and [Must Support/Obligations in IPS](https://hl7.org/fhir/uv/ips/Must-Support-and-Obligations.html). MustSupport/obligations definitional differences are not included in table above*

#### US Core Practitioner (used in US-PCS Composition and through references)

| Resource Elements | [US Core Practitioner Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-practitioner.html) | [Practitioner (IPS)](https://hl7.org/fhir/uv/ips/en/StructureDefinition-Practitioner-uv-ips.html) |
| --- | --- | --- |
| `Practitioner.identifier` | Minimum cardinality: `1` | Minimum cardinality: `0` |
| `Practitioner.identifier` | Must Support: `true` | Must Support/Obligations: `false` |
| `Practitioner.name.family` | Minimum cardinality: `1` | Minimum cardinality: `0` |
| `Practitioner.name.given` | Must Support: `false` | Must Support/Obligations: `true` |
| `Practitioner.telecom.system` | Must Support: `true` | Must Support/Obligations: `false` |
| `Practitioner.telecom.value` | Must Support: `true` | Must Support/Obligations: `false` |
| `Practitioner.address.line` | Must Support: `true` | Must Support/Obligations: `false` |
| `Practitioner.address.city` | Must Support: `true` | Must Support/Obligations: `false` |
| `Practitioner.address.state` | Must Support: `true` | Must Support/Obligations: `false` |
| `Practitioner.address.postalCode` | Must Support: `true` | Must Support/Obligations: `false` |
| `Practitioner.address.country` | Must Support: `true` | Must Support/Obligations: `false` |

*US Core resources (used in US-PCS sections) and IPS clinical profiles vary in the definition of [Must Support in US Core](https://hl7.org/fhir/us/core/must-support.html) and [Must Support/Obligations in IPS](https://hl7.org/fhir/uv/ips/Must-Support-and-Obligations.html). MustSupport/obligations definitional differences are not included in table above*

#### US Core PractitionerRole (used in US-PCS Composition and through references)

| Resource Elements | [US Core PractitionerRole Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-practitionerrole.html) | [PractitionerRole (IPS)](https://hl7.org/fhir/uv/ips/en/StructureDefinition-PractitionerRole-uv-ips.html) |
| --- | --- | --- |
| `PractitionerRole.practitioner` | Must Support: `true` | Must Support/Obligations: `false` |
| `PractitionerRole.code` | Must Support: `true` | Must Support/Obligations: `false` |
| `PractitionerRole.code` | ValueSet: [Care Team Member Function (extensible)](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1099.30/expansion) | ValueSet: [Healthcare Professional Roles - IPS (preferred)](https://hl7.org/fhir/uv/ips/ValueSet-healthcare-professional-roles-uv-ips.html) |
| `PractitionerRole.specialty` | ValueSet: [Health Provider Taxonomy (extensible)](https://vsac.nlm.nih.gov/valueset/2.16.840.1.114222.4.11.1066/expansion) | ValueSet: [Practice Setting Code Value Set (preferred)](http://hl7.org/fhir/R4/valueset-c80-practice-codes.html)|
| `PractitionerRole.location` | Must Support: `true` | Must Support/Obligations: `false` |
| `PractitionerRole.telecom` | Must Support: `true` | Must Support/Obligations: `false` |
| `PractitionerRole.endpoint` | Must Support: `true` | Must Support/Obligations: `false` |

*US Core resources (used in US-PCS sections) and IPS clinical profiles vary in the definition of [Must Support in US Core](https://hl7.org/fhir/us/core/must-support.html) and [Must Support/Obligations in IPS](https://hl7.org/fhir/uv/ips/Must-Support-and-Obligations.html). MustSupport/obligations definitional differences are not included in table above*

#### US Core Procedure (used in US-PCS Procedures section)

| Resource Elements | [US Core Procedure Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-procedure.html) | [Procedure (IPS)](https://hl7.org/fhir/uv/ips/en/StructureDefinition-Procedure-uv-ips.html) |
| --- | --- | --- |
| `Procedure.status` | Must Support: `true` | Must Support/Obligations: `false` |
| `Procedure.code.coding.system` | ValueSet: [US Core Procedure Codes (extensible)](https://hl7.org/fhir/us/core/ValueSet-us-core-procedure-code.html) | ValueSet: [Procedures - IPS (preferred)](https://hl7.org/fhir/uv/ips/ValueSet-procedures-uv-ips.html) |
| `Procedure.subject.reference` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `Procedure.performed[x]` | Minimum cardinality: `0` | Minimum cardinality: `1` |

*US Core resources (used in US-PCS sections) and IPS clinical profiles vary in the definition of [Must Support in US Core](https://hl7.org/fhir/us/core/must-support.html) and [Must Support/Obligations in IPS](https://hl7.org/fhir/uv/ips/Must-Support-and-Obligations.html). MustSupport/obligations definitional differences are not included in table above*

#### US Core Specimen (used through references from US-PCS results entries)

| Resource Elements | [US Core Specimen Profile](https://hl7.org/fhir/us/core/StructureDefinition-us-core-specimen.html) | [Specimen (IPS)](https://hl7.org/fhir/uv/ips/en/StructureDefinition-Specimen-uv-ips.html) |
| --- | --- | --- |
| `Specimen.type.coding.system` | ValueSet: [Specimen Type (extensible)](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1099.54/expansion) | ValueSet: [Result Specimen Type - IPS (preferred)](https://hl7.org/fhir/uv/ips/ValueSet-results-specimen-type-uv-ips.html) |
| `Specimen.subject.reference` | Minimum cardinality: `0` | Minimum cardinality: `1` |
| `Specimen.collection.method` | ValueSet: [FHIR Specimen Collection Method (example)](http://hl7.org/fhir/R4/valueset-specimen-collection-method.html) | ValueSet: [Results Specimen Collection Method - IPS (preferred)](https://hl7.org/fhir/uv/ips/en/ValueSet-results-specimen-collection-method-uv-ips.html) |
| `Specimen.collection.bodySite` | ValueSet: [SNOMED CT Body Structures (example)](http://hl7.org/fhir/R4/valueset-body-site.html) | ValueSet: [Body Site - IPS (preferred)](https://hl7.org/fhir/uv/ips/en/ValueSet-body-site-uv-ips.html) |

*US Core resources (used in US-PCS sections) and IPS clinical profiles vary in the definition of [Must Support in US Core](https://hl7.org/fhir/us/core/must-support.html) and [Must Support/Obligations in IPS](https://hl7.org/fhir/uv/ips/Must-Support-and-Obligations.html). MustSupport/obligations definitional differences are not included in table above*

