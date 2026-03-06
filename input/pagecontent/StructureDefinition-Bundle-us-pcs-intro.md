<blockquote class="note-to-balloters">
  <p> The US-PCS only profiles seven sections in the US-PCS Composition. This Bundle profile only includes resources from those seven sections, even though other resources could be used for other sections. This does not exclude other resources due to the open slicing of Bundle.entry. We invite feedback on this approach from implementers.  
  </p>
</blockquote>

<blockquote class="note-to-balloters">
  <p> The US-PCS flags the <code>Bundle.signature</code> as Must Support as representing a signature for the entire patient summary. Many real‑world IGs (e.g., XDS‑on‑FHIR, IHE profiles) prefer <code>Bundle.signature</code> for document‑level attestation. We recognize that <code>Provenance.signature</code> is also a means to provide signatures. The US Core Provenance resource is not listed in this Bundle profile. We seek implementer feedback on these design choices and guidance regarding digital signatures.    
  </p>
</blockquote>


### Mandatory and Must Support Data Elements

The following data elements must always be present (Mandatory definition) or must be supported if the data is present in the sending system and handled by the receiving system (see [US-PCS Must Support definition](./general-guidance.html#must-support-elements)). They are presented below in a simple human-readable explanation. Profile specific guidance and the formal summary, and definitions then follow.

**Each US-PCS Bundle Must Have:**
1. an identifier
1. a type specifying that it is document
1. a timestamp
1. a mininum of two entries that include: 
    1. the US-PCS Composition reference
    1. The US Core Patient Reference
1. all entries in the Bundle must include: 
    1. a fullUrl 
    1. a resource
1. all entries in the Bundle must **NOT** include: 
    1. any Composition resource other than the first
    1. a search attribute
    1. a request attribute
    1. a response attribute 

**Each US-PCS Bundle Must Support:**
1. a signature for the entire document when attested

 
### Profile Specific Implementation Guidance

The seven sections profiled in the US-PCS Composition do not include all sections profiled in the IPS FHIR Implementation Guide. These other sections may include resources not listed in this US-PCS Bundle profile. 

The US-PCS [General Guidance](./general-guidance.html) page includes the definition of Must Support for this guide and additional guidance on populating sections. 