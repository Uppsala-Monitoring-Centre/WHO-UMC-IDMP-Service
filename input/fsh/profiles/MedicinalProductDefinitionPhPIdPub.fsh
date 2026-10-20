//*******************************
// Publish model
//*******************************
Profile: MedicinalProductDefinitionPub
Parent: MedicinalProductDefinition
Id: MedicinalProductDefinition-pub
Title: "MedicinalProductDefinition (publish)"
Description: "This profile defines how the MedicinalProductDefinition representing the record in WHODrug, UMC's drug dictionary, is published by UMC terminologies"
* insert MedicinalProductDefinitionPhPIdCommon
* meta.source 1..1

// IDENTIFIER
// The UMC product id plus zero-to-many country-specific Local Medicinal Product Identifiers (MPID).
// The UMC record id is internal and must not be published.
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "UMC product id slice; any further identifiers are Local MPIDs"
* identifier contains umcProductId 1..1
* identifier[umcProductId] ^short = "The UMC product id (exactly one)."
* identifier[umcProductId].system = $umcProductId
* identifier[umcProductId].value 1..1
* insert NotUsed(identifier[umcProductId].use)
// Rules on all slices are set after the slice is created, otherwise SUSHI treats the slice rules above as already inherited and drops them
* insert NotUsed(identifier.use)
* identifier.system 1..1
* identifier.system ^example[0].label = "Local MPID"
* identifier.system ^example[0].valueUri = "http://umcterminologies.org/mpid-se"
* identifier.value 1..1
* identifier obeys identifier-system-allowed
* identifier ^short = "UMC product id plus zero-to-many Local MPIDs, system http://umcterminologies.org/mpid-<ISO 3166-1 alpha-2> (repeatable)."

* name 1..
  * ^comment = "Besides the product name, a local name can be added as an additional name with usage (country, language). A dummy value is used until the correct display name is available"
  * usage 0..*
  * usage.modifierExtension 0..0
  * usage ^short = "Where and in which language this name applies (used for the local name)"
  * usage.country ^short = "Country where this name applies"
  * usage.country 1..1
    * coding 1..1
      * system 1..1
      * code 1..1
  * usage.country obeys country-system-allowed
  * usage.country from VsJurisdiction (required)

  * usage.language ^short = "Language for this name"
  * usage.language 1..1
    * coding 1..1
      * code 1..1
      * system 1..1
      * system = $bcp47

// CONTAINED SLICING
// "regulatedAuthorization" is the contained Regulated Authorization carrying the country-specific Market Authorization Number
* contained 0..*
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained ^slicing.description = "Slice contained resources by resource type"
* contained contains regulatedAuthorization 0..*
* contained[regulatedAuthorization] only RegulatedAuthorization
* contained[regulatedAuthorization] ^short = "Contained Regulated Authorization carrying the country-specific Market Authorization Number."
* insert NotUsed(contained[regulatedAuthorization].implicitRules)
* insert NotUsed(contained[regulatedAuthorization].contained)
* insert NotUsed(contained[regulatedAuthorization].modifierExtension)
* contained[regulatedAuthorization].subject 1..1
* contained[regulatedAuthorization].subject only Reference(MedicinalProductDefinition)
* contained[regulatedAuthorization].subject.reference 1..1
* contained[regulatedAuthorization].subject.reference = "#"
* contained[regulatedAuthorization].identifier 1..1
* insert NotUsed(contained[regulatedAuthorization].identifier.use)
* contained[regulatedAuthorization].identifier.system 1..1
  * ^short =  "Country-specific Market Authorization Number system, e.g. http://umcterminologies.org/market-authorization-number-<2-letter ISO 3166 country code>."
  * ^example[0].label = "Market Authorization Number"
  * ^example[0].valueUri = "http://umcterminologies.org/market-authorization-number-se"
* contained[regulatedAuthorization].identifier.value 1..1
  * ^short = "Market Authorization Number value. To be sourced from a database in the future; no data is available yet."
* contained[regulatedAuthorization].identifier obeys market-auth-number-system-pattern

* contact 0..0

* insert NotUsed(description)
* insert NotUsed(indication)

* insert NotUsed(modifierExtension)
* insert NotUsed(implicitRules)
* insert NotUsed(route)
* insert NotUsed(name.modifierExtension)
* insert NotUsedLabel(text)

Invariant:  identifier-system-allowed
Description: "Identifier system must be the UMC product id system or match http://umcterminologies.org/mpid-<2-letter country code>"
Expression: "system = 'http://umcterminologies.org/umc-product-id' or system.matches('^http://umcterminologies[.]org/mpid-[a-zA-Z]{2}$')"
Severity:   #error

Invariant:  country-system-allowed
Description: "Country must be coded with ISO 3166 (urn:iso:std:iso:3166) or the UMC jurisdiction code system (http://umcterminologies.org/CodeSystem/jurisdiction, e.g. EU)"
Expression: "coding.all(system = 'urn:iso:std:iso:3166' or system = 'http://umcterminologies.org/CodeSystem/jurisdiction')"
Severity:   #error

Invariant:  market-auth-number-system-pattern
Description: "Market Authorization Number identifier system must match the pattern http://umcterminologies.org/market-authorization-number-<2-letter country code>"
Expression: "system.matches('^http://umcterminologies[.]org/market-authorization-number-[a-zA-Z]{2}$')"
Severity:   #error
