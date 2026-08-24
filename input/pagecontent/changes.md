### STU 1.0.0

The reconciled version of US-PCS includes the following major updates: 

- Derive its Bundle and Composition profiles from [FHIR Clinical Documents 1.0.0](https://hl7.org/fhir/uv/fhir-clinical-document/STU1.1/en/)
- Ensure that its profiles conform to [FHIR IPS Implementation Guide 2.0.1](https://hl7.org/fhir/uv/ips/STU2/)
- Various updates to guidance pages based on implementer feedback
- Various updates to US-PCS Bundle and Composition profiles based on implementer feedback 

The specific 77 changes included from the 1.0.0-ballot are categorized below: 

There were no **Non-compatible** changes. 

**Substative, Compatible Changes**
- [FHIR-56476](https://jira.hl7.org/browse/FHIR-56476): US Core 6.1.0 Interoperability Risks
- [FHIR-56514](https://jira.hl7.org/browse/FHIR-56514): Clarify section.entry slicing
- [FHIR-56518](https://jira.hl7.org/browse/FHIR-56518): MustSupport flags in US-PCS Bundle profile
- [FHIR-56602](https://jira.hl7.org/browse/FHIR-56602): Clarify document signatures in US-PCS Bundle
- [FHIR-56673](https://jira.hl7.org/browse/FHIR-56673): Clarify requirements on use of entry and emptyReason in US-PCS Composition 
- [FHIR-56678](https://jira.hl7.org/browse/FHIR-56678): Clarify on US-PCS Must Support definition 
- [FHIR-56798](https://jira.hl7.org/browse/FHIR-56798): Guidance on Advance Directives
- [FHIR-56830](https://jira.hl7.org/browse/FHIR-56830): Improve Must Support rule consistency
- [FHIR-56833](https://jira.hl7.org/browse/FHIR-56833): Improve Signature STU note and guidance
- [FHIR-56834](https://jira.hl7.org/browse/FHIR-56834): Remove Must Support from signatures
- [FHIR-56835](https://jira.hl7.org/browse/FHIR-56835): Remove meta.profile from US-PCS Composition  
- [FHIR-56871](https://jira.hl7.org/browse/FHIR-56871): Improve Image on Home Page
- [FHIR-56930](https://jira.hl7.org/browse/FHIR-56930): Update to use FHIR Clinical Documents 1.1
- [FHIR-56958](https://jira.hl7.org/browse/FHIR-56958): Revise US-PCS Must Support on elements
- [FHIR-56976](https://jira.hl7.org/browse/FHIR-56976): Add Encounter guidance
- [FHIR-56982](https://jira.hl7.org/browse/FHIR-56982): Remove Composition.meta.profile MS constraint
- [FHIR-57091](https://jira.hl7.org/browse/FHIR-57091): Clarify distinction between C-CDA CCD and US-PCS
- [FHIR-57094](https://jira.hl7.org/browse/FHIR-57094): Revise Must Support Definition
- [FHIR-57095](https://jira.hl7.org/browse/FHIR-57095): Clarify "processing" definition
- [FHIR-57115](https://jira.hl7.org/browse/FHIR-57115): Add acceptability of using profiles from more than one US Core version
- [FHIR-57120](https://jira.hl7.org/browse/FHIR-57120): Improve terminology guidance page

**Non-substantive Changes**
- [FHIR-56249](https://jira.hl7.org/browse/FHIR-56249): Add Plain Language Summary to US-PCS
- [FHIR-56371](https://jira.hl7.org/browse/FHIR-56371): Typo on US-PCS Composition
- [FHIR-56466](https://jira.hl7.org/browse/FHIR-56466): Suggestion to exclude Encounter.status = entered-in-error 
- [FHIR-56469](https://jira.hl7.org/browse/FHIR-56469): Suggestion to exclude entered-in-error and cancelled statuses for Results
- [FHIR-56513](https://jira.hl7.org/browse/FHIR-56513): Explain sections using DocumentReference
- [FHIR-56519](https://jira.hl7.org/browse/FHIR-56519): Clarify observation-results resource reference
- [FHIR-56523](https://jira.hl7.org/browse/FHIR-56523): Typo in Must Support introduction
- [FHIR-56549](https://jira.hl7.org/browse/FHIR-56549): Improve Terminology guidance page
- [FHIR-56550](https://jira.hl7.org/browse/FHIR-56550): Improve US Variance page
- [FHIR-56609](https://jira.hl7.org/browse/FHIR-56609): Add Must Support to Composition.status
- [FHIR-56610](https://jira.hl7.org/browse/FHIR-56610): Improve display on fullUrl in US-PCS Bundle
- [FHIR-56611](https://jira.hl7.org/browse/FHIR-56611): Spelling and punctuation errors on Bundle and Composition
- [FHIR-56661](https://jira.hl7.org/browse/FHIR-56661): Clarify use of change-made and section-note extensions 
- [FHIR-56820](https://jira.hl7.org/browse/FHIR-56820): QA Report on various US-PCS Implementation Guide
- [FHIR-56822](https://jira.hl7.org/browse/FHIR-56822): Improve links
- [FHIR-56824](https://jira.hl7.org/browse/FHIR-56824): Update Composition StructureDefinition Description
- [FHIR-56826](https://jira.hl7.org/browse/FHIR-56826): Clarify "relevant" in US-PCS conformance
- [FHIR-56836](https://jira.hl7.org/browse/FHIR-56836): Clarify Composition.custodian text
- [FHIR-56869](https://jira.hl7.org/browse/FHIR-56869): Typos issues on home page
- [FHIR-56870](https://jira.hl7.org/browse/FHIR-56870): Typos on terminology guidance page
- [FHIR-56872](https://jira.hl7.org/browse/FHIR-56872): Typos in the Use Case section
- [FHIR-56873](https://jira.hl7.org/browse/FHIR-56873): Typos and grammar issues in the General Guidance section
- [FHIR-56874](https://jira.hl7.org/browse/FHIR-56874): Consolidate Dependencies and Related Guides
- [FHIR-56875](https://jira.hl7.org/browse/FHIR-56875): Temove US Core Gender and Birth Sex extensions from examples
- [FHIR-56917](https://jira.hl7.org/browse/FHIR-56917): Typo on home page
- [FHIR-56918](https://jira.hl7.org/browse/FHIR-56918): Clarity  "Required sections" versus "Must Support"
- [FHIR-56932](https://jira.hl7.org/browse/FHIR-56932): Correct typo in the Example JSON note
- [FHIR-56963](https://jira.hl7.org/browse/FHIR-56963): Update image for US Core version
- [FHIR-56964](https://jira.hl7.org/browse/FHIR-56964): Improve terminology alignment from US Core to IPS
- [FHIR-56977](https://jira.hl7.org/browse/FHIR-56977): Update Figure 1
- [FHIR-56978](https://jira.hl7.org/browse/FHIR-56978): Add guidance to US-PCS Bundle
- [FHIR-56980](https://jira.hl7.org/browse/FHIR-56980): Add guidance on use of DocumentReference
- [FHIR-56981](https://jira.hl7.org/browse/FHIR-56981): Change reference to laws and regulation
- [FHIR-57061](https://jira.hl7.org/browse/FHIR-57061): Clarify US-PCS conformance to IPS
- [FHIR-57062](https://jira.hl7.org/browse/FHIR-57062): Clarify comparison of IPS profiles with US Core profiles
- [FHIR-57077](https://jira.hl7.org/browse/FHIR-57077): Improve table with CCD, IPS, and US Core
- [FHIR-57080](https://jira.hl7.org/browse/FHIR-57080): Correct reference from IPA 
- [FHIR-57081](https://jira.hl7.org/browse/FHIR-57081): Improve  major procedures and results recommendations
- [FHIR-57082](https://jira.hl7.org/browse/FHIR-57082): Improve Must Support wording
- [FHIR-57085](https://jira.hl7.org/browse/FHIR-57085): Improve Must Support organization
- [FHIR-57087](https://jira.hl7.org/browse/FHIR-57087): Revise reference to US Core v9.0.0
- [FHIR-57098](https://jira.hl7.org/browse/FHIR-57098): Remove recommended Encounter types
- [FHIR-57118](https://jira.hl7.org/browse/FHIR-57118): Improve terminology alignment table
- [FHIR-57125](https://jira.hl7.org/browse/FHIR-57125): Typo in use case
- [FHIR-57127](https://jira.hl7.org/browse/FHIR-57127): Provide overview of IPS vs. US Core vs. US-PCS Must Support differences
- [FHIR-57128](https://jira.hl7.org/browse/FHIR-57128): Typo in Profiles
- [FHIR-57129](https://jira.hl7.org/browse/FHIR-57129): Create tables for IPS Variance
- [FHIR-57154](https://jira.hl7.org/browse/FHIR-57154): Revise Encounters guidance
- [FHIR-57833](https://jira.hl7.org/browse/FHIR-57833): Update to IPS 2.0.1
- [FHIR-57921](https://jira.hl7.org/browse/FHIR-57921): Improve Figure 3 text that is unclear
- [FHIR-57922](https://jira.hl7.org/browse/FHIR-57922): Explain Creator and Consumer defintion differences
- [FHIR-57957](https://jira.hl7.org/browse/FHIR-57957): Typo in Terminology Alignment page
- [FHIR-57958](https://jira.hl7.org/browse/FHIR-57958): Improve Terminology Alignment table
- [FHIR-57959](https://jira.hl7.org/browse/FHIR-57959): Clarify "methods outlined in that guide"
- [FHIR-57960](https://jira.hl7.org/browse/FHIR-57960): Improve link from use-case
- [FHIR-58638](https://jira.hl7.org/browse/FHIR-58638): Fix extensions internal dependency to explicit like IPS 2.0.1 


### STU 1.0.0-ballot 

The first ballot of the US Patient Care Summary (US-PCS) includes the following major design decisions: 

- Derive its Bundle and Composition profiles from [FHIR Clinical Documents 1.0.0](https://hl7.org/fhir/uv/fhir-clinical-document/STU1/en/)
- Align its profiles to the [FHIR IPS Implementation Guide 2.0.0](https://hl7.org/fhir/uv/ips/STU2/)
- Populate the document contents with [US Core Implementation Guide 6.1.0](https://hl7.org/fhir/us/core/STU6.1/) resources
- Document [variances to IPS](./variance.html)
- Provide [terminology guidance](./terminology-guidance.html) to/from international expectations   
- Specific conformance requirements are documented through the use of [Must Support](./general-guidance.html#must-support-elements) 

Since this is the first version, no detailed change log is yet available. 