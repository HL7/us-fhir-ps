### Ballot Status

This Implementation Guide is being balloted in May 2026 ballot cycle by HL7. 

### Dependencies and Related Guides

{% include img.html img="US-PCS-Relationships.png" caption="Figure 1: The US-PCS"
    width="80%" %}

#### Dependecy on US Core

US-PCS uses [US Core Implementation Guide 6.1.0](https://hl7.org/fhir/us/core/STU6.1/) to populate the Patient, Organization, Practitioner and individual clincial resources within US-PCS sections. 

#### Dependency on FHIR Clinical Documents

US-PCS derives its Bundle and Composition profiles from [FHIR Clinical Documents Implementation Guide 1.0.1](https://hl7.org/fhir/uv/fhir-clinical-document/STU1.0.1/). Changes have been made to align these profiles with FHIR IPS 2.0.0 and include edits for the US ecosystem. The definition of "derive" for purposes of US-PCS is *"to formally base a specification through defined profiling or inheritance, remaining fully conformant while adding only further constraints."*

#### Alignment to International Patient Summary 

US-PCS seeks to align with the [FHIR IPS International Patient Summary Implementation Guide 2.0.0](https://hl7.org/fhir/uv/ips/STU2/). The definition of "align" for purposes of US-PCS is *"to structure a specification so it is consistent with IPS intent and structure, without formal derivation and without introducing conflicting requirements."*

#### Profile Differences between IPS and US-PCS

Specific differences between IPS and US-PCS are described in the [US Variance to IPS page](./variance.html).

### Dependencies Table 

{% lang-fragment dependency-table.xhtml %}


### Cross Version Analysis

{% lang-fragment cross-version-analysis.xhtml %}

### Global Profiles

{% lang-fragment globals-table.xhtml %}