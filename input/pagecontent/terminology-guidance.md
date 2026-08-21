<style>
td, th {
   border: 1px solid black!important;
   max-width:500px;
}

table {
   width:100%
}
</style>

The [International Patient Summary (IPS)](https://hl7.org/fhir/uv/ips/STU2/) has preferred bindings to several terminologies that vary from US Core terminology expectations. While this guide does not provide full mapping guidance, which would require considerations at the ValueSet level for each respective clinical profile, the table below summarizes coding system difference for implementer awareness and use when possible.

### US Core to IPS Terminology Considerations

#### US-PCS Mandatory and Must Support Sections

|Data Section (FHIR Resource)|US Core Terminology|IPS Terminology|Guidance|
|:----|:----|:----|:----|
|Allergies (AllergyIntolerance)|RxNorm, SNOMED CT US Edition|SNOMED CT, WHO ATC|[Sending SNOMED CT](terminology-guidance.html#using-snomed-in-ips) or WHO ATC concepts preferred|
|Problem List (Condition)|SNOMED CT US Edition, ICD-10-CM|SNOMED CT|[Sending SNOMED CT](terminology-guidance.html#using-snomed-in-ips) concepts preferred| 
|Medication Summary<br/>(MedicationRequest)|RxNorm|SNOMED CT, WHO ATC|[Sending SNOMED CT](terminology-guidance.html#using-snomed-in-ips) or WHO ATC concepts preferred|
|Encounters (Encounter)|SNOMED CT US Edition, CPT|No terminology guidance|[Sending SNOMED CT](terminology-guidance.html#using-snomed-in-ips) concepts preferred|
|Immunizations (Immunization)|CVX|SNOMED CT, WHO ATC|[Sending SNOMED CT](terminology-guidance.html#using-snomed-in-ips) concepts preferred
|Procedures (Procedure)|SNOMED CT US Edition, <br/>LOINC, CPT, CDT, ICD-10-PCS, HCPCS|SNOMED CT|[Sending SNOMED CT](terminology-guidance.html#using-snomed-in-ips) concepts preferred|
|Results <br/>(Observation & DiagnosticReport)|LOINC|LOINC|Terminologies aligned|

#### US- PCS Optional Sections from IPS

|Data Section (FHIR Resource)|US Core Terminology|IPS Terminology|Guidance|
|:----|:----|:----|:----|
|Advance Directives (Consent)|No terminology guidance|No terminology guidance|N/A
|Alerts (Flag)|No terminology guidance|No terminology guidance|N/A
|Functional Status (Condition)|SNOMED CT US Edition, ICD-10-CM|SNOMED CT|[Sending SNOMED CT](terminology-guidance.html#using-snomed-in-ips) concepts preferred| 
|Medical Devices <br/>(Device & DeviceUseStatement)|SNOMED CT US Edition|SNOMED CT|[Sending SNOMED CT](terminology-guidance.html#using-snomed-in-ips) concepts preferred|
|History of Past Problems (Condition)|SNOMED CT US Edition, ICD-10-CM|SNOMED CT|[Sending SNOMED CT](terminology-guidance.html#using-snomed-in-ips) concepts preferred| 
|History of Pregnancy (Observation)|LOINC (code), <br/>SNOMED CT US Edition (value)|LOINC (code),<br/> SNOMED CT (value)|LOINC aligned although differences in SNOMED CT valuesets|
|Patient Story <br/>(Any resource permitted)|No terminology guidance|No terminology guidance|N/A
|Plan of Care (CarePlan)|No terminology guidance|No terminology guidance|N/A
|Social History|LOINC (code),<br/> SNOMED CT US Edition (value)|LOINC (code),<br/> SNOMED CT (value)|LOINC aligned although differences in SNOMED CT valuesets 
|Vital Signs|LOINC|LOINC|Terminologies aligned  


### Using SNOMED in IPS

The Systematized Nomenclature of Medicine Clinical Terms (SNOMED CT) is licensed and available for use in the United States and has a national terminology subgroup in the US Edition of SNOMED CT. In addition, SNOMED CT is the [preferred vocabulary for most clinical domains in the context of IPS](https://hl7.org/fhir/uv/ips/en/General-Principles.html#structuring-terminology-choices). Therefore, it is encouraged to leverage codes from SNOMED CT when possible. While United States implementations may use concepts from the US Edition to support national requirements, implementers should preferentially select concepts that originate in the International Edition when clinically appropriate and sufficiently expressive for cross-border usage. Doing so promotes semantic interoperability across jurisdictions, reduces the need for cross-edition mappings, and improves the consistency of information exchange between US-based systems and international IPS implementations. 

#### Adding Translation Concepts from US Terminologies to SNOMED

Terminology mappings between US Core and IPS can be informed by resources from the U.S. National Library of Medicine (NLM) with the [Unified Medical Language System (UMLS) Metathesaurus](https://www.nlm.nih.gov/research/umls/index.html) serving as the primary source for identifying semantic equivalence across terminology systems. The UMLS integrates concepts and relationships from SNOMED CT, LOINC, RxNorm, ICD-10-CM, and numerous other clinical vocabularies, making it a valuable resource for implementing mapping between US Core and IPS terminology bindings. Note that while binding may be required or extensible in US Core, terminology bindings in IPS are only preferred. Therefore, while including international friendly concepts is encouraged, it is not required for IPS conformance.  

- §terminology-1: While mapping to IPS-preferred terms remains optional for US-PCS implementers, document creators **SHOULD** reference published mapping resources and **SHOULD NOT** create custom maps to IPS concepts whenever possible.§   

- §terminology-2: Document creators **SHOULD** retain US terms and concepts when adding international concepts.§   




