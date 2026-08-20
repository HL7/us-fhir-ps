Invariant: bdl-uspcs-1
Description: "A US-PCS document must have no additional Composition (including Composition subclass) resources besides the first."
* severity = #error
* expression = "entry.tail().where(resource is Composition).empty()"