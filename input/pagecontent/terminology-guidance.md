<style>
td, th {
   border: 1px solid black!important;
   max-width:500px;
}
</style>

The [International Patient Summary (IPS)](https://hl7.org/fhir/uv/ips/STU2/) has preferred bindings to several terminologies that vary from US Core terminology expectations. While this guide does not provide full mapping guidance, which would require considerations at the ValueSet level for each respective clinical profile, the table below summarizes coding system difference for implementer awareness and use when possible.

### US Core to IPS Terminology Considerations

|Data Section (FHIR Resource)|<span style="color: #00B0F0;">US-PCS Strength ▼</span>|US Core Terminology|IPS Terminology|Guidance|
|-----|-----|-----|-----|-----|
|Allergies (AllergyIntolerance)|**Mandatory**|RxNorm, SNOMED CT US Edition|SNOMED CT, WHO ATC|Map RxNorm concepts to SNOMED CT. Include WHO ATC when available|
|Problem List (Condition)|**Mandatory**|SNOMED CT US Edition, ICD-10-CM|SNOMED CT|Map ICD-10-CM concepts to SNOMED CT| 
|Medication Summary (MedicationRequest)|**Mandatory**|RxNorm|SNOMED CT, WHO ATC|Map RxNorm concepts to SNOMED CT. Include WHO ATC when available|
|Encounters (Encounter)|**Must Support**|SNOMED CT US Edition, CPT|Not profiled|SNOMED CT more suitable for international context|
|Immunizations (Immunization)|**Must Support**|CVX|SNOMED CT, WHO ATC|Map CVX concepts to SNOMED CT. Include WHO ATC when available
|Procedures (Procedure)|**Must Support**|SNOMED CT US Edition, LOINC, CPT, CDT, ICD-10-PCS, HCPCS|SNOMED CT|Map LOINC, CPT, CDT, ICD-10-PCS, HCPCS to SNOMED CT|
|Results (Observation & DiagnosticReport)|**Must Support**|LOINC|LOINC|No additional mapping
|Advance Directives (Consent)|N/A (IPS Optional)|Not profiled|Not profiled|
|Alerts (Flag)|N/A (IPS Optional)|Not profiled|Not profiled|
|Functional Status (Condition)|N/A (IPS Optional)|SNOMED CT US Edition, ICD-10-CM|SNOMED CT|Map ICD-10-CM concepts to SNOMED CT| 
|Medical Devices (Device & DeviceUseStatement)|N/A (IPS Optional)|SNOMED CT US Edition|SNOMED CT|Map to SNOMED CT|
|History of Past Problems (Condition)|N/A (IPS Optional)|SNOMED CT US Edition, ICD-10-CM|SNOMED CT|Map ICD-10-CM concepts to SNOMED CT| 
|History of Pregnancy (Observation)|N/A (IPS Optional)|LOINC (code), SNOMED CT US Edition (value)|LOINC (code), SNOMED CT (value)|No additional mapping 
|Patient Story (Any resource permitted)|N/A (IPS Optional)|Not profiled|Not profiled|
|Plan of Care (CarePlan)|N/A (IPS Optional)|None|Not profiled|
|Social History|N/A (IPS Optional)|LOINC (code), SNOMED CT US Edition (value)|LOINC (code), SNOMED CT(value)|No additional mapping 
|Vital Signs|N/A (IPS Optional)|LOINC|LOINC|No additional mapping  

### Using SNOMED IPS Terminology

SNOMED CT is licensed and available for use in the United States. Not all nations worldwide, however, have a license or use SNOMED CT. In addition, national editions of SNOMED CT may vary from internationally recognized codes. Therefore, it is encouraged to leverage codes from the [SNOMED IPS Terminology](https://www.snomed.org/international-patient-summary-terminology) when possible. This sub-ontology of SNOMED CT is licensed permissively under a Creative Commons license and can be used worldwide.   