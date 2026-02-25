## US Variance to IPS

The US-PCS attempts to strongly align with the IPS but it does not derive its Bundle or Composition profiles from the IPS. All 16 sections of the IPS are profiled in US-PCS, but resource expectations draw primarily from US Core rather than IPS clinical profiles. 

### US Variance in Must Support, Obligation and Actors

The US-PCS guide does not use the Must Support definition through obligations as defined in the [IPS Implementation Guide](https://hl7.org/fhir/uv/ips/STU2/Must-Support-and-Obligations.html). In addition, the [Must Support definition](./general-guidance.html#must-support-definition) in US-PCS for Document Creator and Document Consumer behavior vary from the IPS Actor Definition of [IPS Creator](https://hl7.org/fhir/uv/ips/ActorDefinition-Creator.html) and [IPS Consumer](https://hl7.org/fhir/uv/ips/ActorDefinition-Consumer.html). 

### US Variance in Sections

The definition of "Recommended" sections has been changed to "Must Support" sections, meaning that health information system must able to send and receive these in context of the US-PCS. 

The US-PCS guide makes the "Medical Devices" section of IPS "Optional" while it is "Recommended" in the IPS.  

The US-PCS guide makes the sections of "Social History" and "Vital Signs" "Must Support" in the context of US-PCS. In addition, the "Recommended" IPS sections of "Immunizations", "Procedures", and "Results" are recategorized from "Recommended" in IPS to "Must Support" 

### US Core Profile Variances to IPS Profiles

The following provides a comparison of IPS 2.0.0 Profiles to US Core 6.1.0 profiles. 

All elements vary in the definition of [Must Support/Obligations in IPS](https://hl7.org/fhir/uv/ips/Must-Support-and-Obligations.html) vs. definition of [Must Support in US Core](https://hl7.org/fhir/us/core/STU6.1/must-support.html). Items with additional cardinality or Must Support flags and differences in terminology bindings are shown below: 

1. [US Core AllergyIntolerance Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-allergyintolerance.html)

    Additional requirements in [IPS AllergyIntolerance](https://hl7.org/fhir/uv/ips/STU2/StructureDefinition/AllergyIntolerance-uv-ips.html):

   - `AllergyIntolerance.patient.reference` Element minimum cardinalities differ: '1' vs '0'
   - `AllergyIntolerance.type` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `AllergyIntolerance.onset[x]` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `AllergyIntolerance.code.coding` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `AllergyIntolerance.code.coding.system` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `AllergyIntolerance.code.coding.system` ValueSet binding varies from [Allergies & Intolerances - IPS](https://hl7.org/fhir/uv/ips/ValueSet-allergies-intolerances-uv-ips.html) vs. [Common substances for allergy and intolerance documentation including refutations](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1186.8/expansion)
   - `AllergyIntolerance.code.coding.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `AllergyIntolerance.code.text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `AllergyIntolerance.reaction.manifestation` Valueset binding varies from [Allergy Reaction - IPS](https://hl7.org/fhir/uv/ips/ValueSet-allergy-reaction-uv-ips.html) vs. [SNOMEDCTClinicalFindings](http://hl7.org/fhir/R4/valueset-clinical-findings.html)
   - `AllergyIntolerance.reaction.severity` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'

1. [US Core Care Plan](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-careplan.html)
   - No differences since IPS references FHIR R4 Base CarePlan

1. [US Core Condition Problems and Health Concerns Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-problems-health-concerns.html)

    Additional requirements in [IPS Condition](https://hl7.org/fhir/uv/ips/STU2/StructureDefinition/Condition-uv-ips.html):

   - `Condition.subject.reference` Element minimum cardinalities differ: '1' vs '0'
   - `Condition.clinicalStatus.coding` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Condition.clinicalStatus.coding.system` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Condition.clinicalStatus.coding.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Condition.clinicalStatus.text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Condition.category.coding` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Condition.category.coding.system` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Condition.category.coding.system` Valueset binding varies from [Problems - IPS](https://hl7.org/fhir/uv/ips/ValueSet-problems-uv-ips.html) vs. [US Core Condition Codes](https://hl7.org/fhir/us/core/STU6.1/ValueSet-us-core-condition-code.html)
   - `Condition.category.coding.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Condition.category.text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Condition.severity` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Condition.severity.coding` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Condition.severity.coding.system` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Condition.severity.coding.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Condition.severity.text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Condition.code.coding` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Condition.code.coding.system` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Condition.code.coding.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Condition.code.text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'

1. [US Core Device Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-implantable-device.html)

    There is a fundamental difference that US Core 6.1.0 only covers implantable devices, while IPS is larger in scope (i.e. non-implantable devices) Additional requirements in [IPS Device](https://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Device-uv-ips.html):

   - `Device.type.coding` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Device.type.coding.system` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Device.type.coding.system` ValueSet binding varies from [Medical Devices - IPS](https://hl7.org/fhir/uv/ips/ValueSet-medical-devices-uv-ips.html) vs. [FHIRDeviceType](http://hl7.org/fhir/R4/valueset-device-kind.html)
   - `Device.type.coding.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Device.type.text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'

1. [US Core DiagnosticReport Profile for Laboratory Results Reporting](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-diagnosticreport-lab.html)

    Additional requirements in [IPS DiagnosticReport](https://hl7.org/fhir/uv/ips/STU2/StructureDefinition/DiagnosticReport-uv-ips.html):

   - `DiagnosticReport.subject.reference` Element minimum cardinalities differ: '1' vs '0'
   - `DiagnosticReport.effective[x]` Element minimum cardinalities differ: '1' vs '0'
   - `DiagnosticReport.code.coding` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `DiagnosticReport.code.coding.system` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `DiagnosticReport.code.coding.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `DiagnosticReport.code.text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'

1. [US Core Immunization Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-immunization.html)

    Additional requirements in [IPS Immunization](https://hl7.org/fhir/uv/ips/STU2/StructureDefinition/Immunization-uv-ips.html):

   - `Immunization.patient.reference` Element minimum cardinalities differ: '1' vs '0'
   - `Immunization.vaccineCode.coding` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Immunization.vaccineCode.coding.system` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - [Vaccines - IPS](https://hl7.org/fhir/uv/ips/ValueSet-vaccines-uv-ips.html) vs. [CVX Vaccines Administered Vaccine Set](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1010.6/expansion)
   - `Immunization.vaccineCode.coding.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Immunization.vaccineCode.text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'

1. [US Core Medication Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-medication.html)

    Additional requirements in [IPS Medication](https://hl7.org/fhir/uv/ips/STU2/StructureDefinition/Medication-uv-ips.html):

   - `Medication.code.coding` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Medication.code.coding.system` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Medication.coding.system` ValueSet binding varies from [Medications - IPS](https://hl7.org/fhir/uv/ips/ValueSet-medication-uv-ips.html) vs. [Medication Clinical Drug](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1010.4/expansion)
   - `Medication.code.coding.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Medication.code.text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Medication.form` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Medication.form.coding` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Medication.form.coding.system` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Medication.form.coding.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Medication.form.text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Medication.ingredient` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Medication.ingredient.item[x]` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Medication.ingredient.item[x].coding` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Medication.ingredient.item[x].coding.system` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Medication.ingredient.item[x].coding.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Medication.ingredient.item[x].text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Medication.ingredient.strength` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'

1. [US Core MedicationRequest Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-medicationrequest.html)

   Additional requirements in [IPS MedicationRequest](https://hl7.org/fhir/uv/ips/STU2/StructureDefinition/MedicationRequest-uv-ips.html):

   - `MedicationRequest.doNotPerform` is fixed to false vs. true/false
   - `MedicationRequest.medication[x].coding` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `MedicationRequest.medication[x].coding.system` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `MedicationRequest.medication[x].coding.system` ValueSet binding varies from [Medications - IPS](https://hl7.org/fhir/uv/ips/ValueSet-medication-uv-ips.html) vs. [Medication Clinical Drug](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1010.4/expansion)
   - `MedicationRequest.medication[x].coding.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `MedicationRequest.medication[x].text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `MedicationRequest.subject.reference` Element minimum cardinalities differ: '1' vs '0'

1. [US Core Patient Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html)

    Additional requirements in [IPS Patient](https://hl7.org/fhir/uv/ips/STU2/StructureDefinition/Patient-uv-ips.html):

   - `Patient.name.use` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Patient.name.text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Patient.telecom` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Patient.gender` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Patient.birthDate` Element minimum cardinalities differ: '1' vs '0'
   - `Patient.generalPractitioner` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'

1. [US Core Practitioner Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-practitioner.html)

    Additional requirements in [IPS Practitioner](https://hl7.org/fhir/uv/ips/STU2/StructureDefinition/Practitioner-uv-ips.html):

   - `Practitioner.name.given` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'

1. [US Core PractitionerRole Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-practitionerrole.html)
   - `PractitionerRole.code` Binding varies between [Care Team Member Function](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1099.30/expansion) and [Healthcare Professional Roles - IPS](https://hl7.org/fhir/uv/ips/ValueSet-healthcare-professional-roles-uv-ips.html)

1. [US Core Observation Pregnancy Status Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-pregnancystatus.html)

    Additional requirements in [IPS Observation Pregnancy Status](https://hl7.org/fhir/uv/ips/STU2/StructureDefinition/Observation-pregnancy-status-uv-ips.html):

   - `Observation.code.coding` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.code.coding.system` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.code.coding.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.code.text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.subject.reference` Element minimum cardinalities differ: '1' vs '0'
   - `Observation.bodySite` Element maximum cardinalities differ: '0' vs '*'
   - `Observation.specimen` Element maximum cardinalities differ: '0' vs '*'
   - `Observation.device` Element maximum cardinalities differ: '0' vs '*'
   - `Observation.referenceRange` Element maximum cardinalities differ: '0' vs '*'
   - `Observation.hasMember` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.hasMember.reference` Element minimum cardinalities differ: '1' vs '0'
   - `Observation.hasMember.reference` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.component` Element maximum cardinalities differ: '0' vs '*'

1. [US Core Procedure Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-procedure.html)

    Additional requirements in [IPS Procedure](https://hl7.org/fhir/uv/ips/STU2/StructureDefinition/Procedure-uv-ips.html):

   - `Procedure.code.coding` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Procedure.code.coding.system` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Procedure.code.coding.system` ValueSet varies from [Procedures - IPS](https://hl7.org/fhir/uv/ips/ValueSet-procedures-uv-ips.html) vs. (US Core Procedure Codes)[https://hl7.org/fhir/us/core/STU6.1/ValueSet-us-core-procedure-code.html]
   - `Procedure.code.coding.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Procedure.code.text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Procedure.subject.reference` Element minimum cardinalities differ: '1' vs '0'
   - `Procedure.performed[x]` Element minimum cardinalities differ: '1' vs '0'

1. [US Core Observation Clinical Result Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-clinical-result.html) and [US Core Laboratory Result Observation Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-lab.html) 

    Additional requirements in [IPS Observation Results - Laboratory/Pathology](https://hl7.org/fhir/uv/ips/STU2/StructureDefinition/Observation-results-laboratory-pathology-uv-ips.html):

   - `Observation.status` Element differ in valueset: 'http://hl7.org/fhir/uv/ips/ValueSet/results-status-uv-ips (required)' vs 'http://hl7.org/fhir/ValueSet/observation-status (required)'
   - `Observation.category:laboratory` Fixed binding to "laboratory" vs. [Clinical Result Observation Category](https://hl7.org/fhir/us/core/STU6.1/ValueSet-us-core-clinical-result-observation-category.html)  
   - `Observation.category.coding` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.category.coding.system` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.category.coding.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.category.text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.code.coding` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.code.coding.system` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.code.coding.system` ValueSet binding varies from [Results Laboratory/Pathology Observation](https://hl7.org/fhir/uv/ips/ValueSet-results-laboratory-pathology-observations-uv-ips.html) vs. vs. [LOINCCodes](http://hl7.org/fhir/R4/valueset-observation-codes.html) 
   - `Observation.code.coding.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.code.text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.subject.reference` Element minimum cardinalities differ: '1' vs '0'
   - `Observation.effective[x]` Element minimum cardinalities differ: '1' vs '0'
   - `Observation.performer` Element minimum cardinalities differ: '1' vs '0'
   - `Observation.valueCodeableConcept.coding` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.valueCodeableConcept.coding.system` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.valueCodeableConcept.coding.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.valueCodeableConcept.text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.component` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'

1. [US Core Observation Clinical Result Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-clinical-result.html)

    Additional requirements in [IPS Observation Results - Radiology](https://hl7.org/fhir/uv/ips/STU2/StructureDefinition/Observation-results-radiology-uv-ips.html):

   - `Observation.category:radiology` Element minimum cardinalities differ: '1' vs '0'
   - `Observation.category:radiology` Element maximum cardinalities differ: '1' vs '*'
   - `Observation.category:radiology` Fixed binding to "imaging" vs. [Clinical Result Observation Category](https://hl7.org/fhir/us/core/STU6.1/ValueSet-us-core-clinical-result-observation-category.html)
   - `Observation.code.coding` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.code.coding.system` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.code.coding.system` ValueSet binding to [Result Radiology Observation](https://hl7.org/fhir/uv/ips/ValueSet-results-radiology-observations-uv-ips.html) vs. [LOINCCodes](http://hl7.org/fhir/R4/valueset-observation-codes.html)
   - `Observation.code.coding.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.code.text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.subject.reference` Element minimum cardinalities differ: '1' vs '0'
   - `Observation.effective[x]` Element minimum cardinalities differ: '1' vs '0'
   - `Observation.performer` Element minimum cardinalities differ: '1' vs '0'
   - `Observation.component` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'

1. [US Core Organization Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-organization.html)
   - No additional requirements in IPS Profile

1. [US Core Simple Observation Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-simple-observation.html)

    Additional requirements in [IPS Observation Alcohol Use](https://hl7.org/fhir/uv/ips/STU2/StructureDefinition/Observation-alcoholuse-uv-ips.html):

   - `Observation.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.code.coding` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.code.coding.system` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.code.coding.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.code.coding.code` Fixed binding to LOINC 74013-4 vs. [LOINCCodes](http://hl7.org/fhir/R4/valueset-observation-codes.html) 
   - `Observation.code.text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.subject.reference` Element minimum cardinalities differ: '1' vs '0'
   - `Observation.effective[x]` Element minimum cardinalities differ: '1' vs '0'
   - `Observation.component` Element maximum cardinalities differ: '0' vs '*'

1. [US Core Smoking Status Observation Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-smokingstatus.html)

    Additional requirements in [IPS Observation Tobacco Use](https://hl7.org/fhir/uv/ips/STU2/StructureDefinition/Observation-tobaccouse-uv-ips.html):

   - `Observation.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.code.coding` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.code.coding.system` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.code.coding.system` Valueset binding varies from [Current Smoking Status](https://hl7.org/fhir/uv/ips/ValueSet-current-smoking-status-uv-ips.html) to [Smoking Status](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113883.11.20.9.38/expansion)
   - `Observation.code.coding.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.code.text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Observation.subject.reference` Element minimum cardinalities differ: '1' vs '0'
   - `Observation.component` Element maximum cardinalities differ: '0' vs '*'

1. [US Core Specimen Profile](https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-specimen.html)

    Additional requirements in [IPS Specimen](https://hl7.org/fhir/uv/ips/STU2/StructureDefinition/Specimen-uv-ips.html):

   - `Specimen.type.coding` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Specimen.type.coding.system` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Specimen.type.coding.system` ValueSet binding varies from [Result Speciman Type -IPS](https://hl7.org/fhir/uv/ips/ValueSet-results-specimen-type-uv-ips.html) to [Specimen Type](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1099.54/expansion)
   - `Specimen.type.coding.code` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Specimen.type.text` Element differ in definition for mustSupport/Obligations: 'true' vs 'false'
   - `Specimen.subject.reference` Element minimum cardinalities differ: '1' vs '0'





