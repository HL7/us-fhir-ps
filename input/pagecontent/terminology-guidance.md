<style>
td, th {
   border: 1px solid black!important;
   max-width:500px;
}
</style>

The [International Patient Summary (IPS)](https://hl7.org/fhir/uv/ips/STU2/) has preferred bindings to several terminologies that vary from US-Core terminology expectations. While mapping is not required to create a conformant US-PCS, it is encouraged where possible. 

### Terminology Alignment from US Core to IPS 

|Resource|US Core Terminology|IPS Terminology|Guidance|
|-----|-----|-----|-----|
|AllergyIntolerance (Allergies and Intolerance)|RxNorm, SNOMED|SNOMED, WHO ATC|Map RxNorm concepts to SNOMED. Include WHO ATC when available|
|Condition (Problem List)|SNOMED, ICD-10|SNOMED|Map ICD-10 concepts to SNOMED| 
|MedicationRequest (Medication Summary)|RxNorm|SNOMED, WHO ATC|Map RxNorm concepts to SNOMED. Include WHO ATC when available|
|Immunization (Immunizations)|CVX|SNOMED, WHO ATC|Map CVX concepts to SNOMED. Include WHO ATC when available
|Observation and DiagnosticReport (Results)|LOINC|LOINC|No additional mapping
|Procedure (Procedures)|SNOMED, LOINC, CPT, CDT, ICD-10, HCPCS|SNOMED|Map LOINC, CPT, CDT, ICD-10, HCPCS to SNOMED|
|Device (Medical Devices)|SNOMED|SNOMED|Map to SNOMED|
|Consent (Advance Directives)|Not profiled|Not profiled|
|Flag (Alerts)|Not profiled|Not profiled|
|Condition (Functional Status)|SNOMED, ICD-10|SNOMED|Map ICD-10 concepts to SNOMED| 
|Condition (History of Past Problems)|SNOMED, ICD-10|SNOMED|Map ICD-10 concepts to SNOMED| 
|Observation (History of Pregnancy)|LOINC (code), SNOMED (value)|LOINC (code), SNOMED (value)|No additional mapping 
|Any (Patient Story)|Not profiled|Not profiled|
|CarePlan|None|Not profiled|
|Observation (Social History - Smoking Status)|LOINC (code), SNOMED (value)|LOINC (code), SNOMED (value)|No additional mapping 
|Observation (Vital Signs)|LOINC|LOINC|No additional mapping  

### Using SNOMED IPS Terminology

SNOMED CT is licensed and available for use in the United States. Not all nations worldwide, however, have a license or use SNOMED. In addition, national editions of SNOMED CT may vary from internationally recognized codes. Thereforce, it is encouraged to leverage codes from the [SNOMED IPS Terminology](https://www.snomed.org/international-patient-summary-terminology) when possible. This sub-onotology of SNOMED CT is licensed permissively under a Creative Commons license and can be used worldwide.   