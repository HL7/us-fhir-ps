<blockquote class="stu-note">
  <p> The US-PCS only profiles seven sections in the US-PCS Composition. This Bundle profile only includes resources from those seven sections, even though other resources could be used for other sections. This does not exclude other resources due to the open slicing of Bundle.entry. For the organization of which resources to include in each section, refer to the US-PCS Composition profile. 
  </p>
</blockquote>

<blockquote class="stu-note">
  <p> The US-PCS does not profile <code>Bundle.signature</code> for document signatures since [emerging FHIR guidance](https://fhir.hl7.org/fhir/signatures.html) has favored usage of <code>Provenance.signature</code>. We recommend implementers refer to the latest FHIR guidance when including signatures on attested US-PCS documents and content. 
  </p>
</blockquote>


### Mandatory and Must Support Data Elements

The following data elements must always be present (Mandatory definition) or must be supported if the data is present in the sending system and handled by the receiving system (see [US-PCS Must Support definition](./general-guidance.html#must-support-elements)). They are presented below in a simple human-readable explanation. Profile specific guidance and the formal summary, and definitions then follow.

**Each US-PCS Bundle Must Have:**
1. an identifier
1. a type specifying that it is a document
1. a timestamp
1. a US-PCS Composition 
1. a US Core Patient 

### Profile Specific Implementation Guidance
This section provides detailed implementation guidance for the US-PCS Profile.

-  Senders are expected to include more than just the required US-PCS Composition and US Core Patient resources. The US-PCS Composition profiles seven specific sections, which is a subset of the sections available in the IPS FHIR Implementation Guide. Systems are allowed to extend beyond what is included in this profile, or IPS, to support a more comprehensive patient summary.
-  §bund-1: All entries in the Bundle **SHALL** include a fullUrl, and a resource.§

-  §bund-2: All entries in the Bundle **SHALL NOT** include: any Composition resource other than the first, a search attribute, a request attribute, or a response attribute.§


The US-PCS [General Guidance](./general-guidance.html) page includes the definition of Must Support for this guide and additional guidance on populating sections. 




