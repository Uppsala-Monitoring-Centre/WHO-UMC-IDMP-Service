//*******************************
// Publish model
//*******************************
Profile: MedicinalProductDefinitionPub
Parent: MedicinalProductDefinition
Id: MedicinalProductDefinition-pub
Title: "MedicinalProductDefinition (publish)"
Description: "This profile defines how the MedicinalProductDefinition representing the record in WHODrug, UMC's drug dictionary, is published by UMC terminologies"
* insert MedicinalProductDefinitionPhPIdCommon

// IDENTIFIER
// The UMC product id plus zero-to-many country-specific Local Medicinal Product Identifiers (MPID).
// The UMC record id is internal and must not be published.
* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "UMC product id slice; any further identifiers are Local MPIDs"
* identifier contains umcProductId 1..1
* identifier[umcProductId] ^short = "The UMC product id (exactly one)."
* identifier[umcProductId].system = $umcProductId
* identifier obeys identifier-system-allowed
* identifier ^short = "UMC product id plus zero-to-many Local MPIDs (repeatable)."

* name 1..
  * ^comment = "Besides the product name, a local name can be added as an additional name with usage (country, language). A dummy value is used until the correct display name is available"
  * usage 0..
  * usage.country ^short = "Country where this name applies"
  * usage.country 1..1
    * coding 1..1
      * code 1..1
  * usage.country from VsJurisdiction (required)

  * usage.language ^short = "Language for this name"
  * usage.language 1..1
    * coding 1..1
      * code 1..1
      * system = $bcp47

// CONTAINED SLICING
// "regulatedAuthorization" is the contained Regulated Authorization carrying the country-specific Market Authorization Number
* contained 0..*
* contained only Organization or RegulatedAuthorization
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained ^slicing.description = "Slice contained resources by resource type"
* contained contains regulatedAuthorization 0..*
* contained[regulatedAuthorization] only RegulatedAuthorization
* contained[regulatedAuthorization] ^short = "Contained Regulated Authorization carrying the country-specific Market Authorization Number."
* contained[regulatedAuthorization].subject 1..1
* contained[regulatedAuthorization].subject only Reference(MedicinalProductDefinition)
* contained[regulatedAuthorization].subject.reference 1..1
* contained[regulatedAuthorization].subject.reference = "#"
* contained[regulatedAuthorization].identifier 1..1
* contained[regulatedAuthorization].identifier.system 1..1
  * ^short =  "Country-specific Market Authorization Number system, e.g. http://umcterminologies.org/market-authorization-number-<2-letter ISO 3166 country code>."
* contained[regulatedAuthorization].identifier.value 1..1
  * ^short = "Market Authorization Number value. To be sourced from a database in the future; no data is available yet."
* contained[regulatedAuthorization].identifier obeys market-auth-number-system-pattern

* contact 0..0

* insert NotUsed(description)
* insert NotUsed(indication)

* insert NotUsed(modifierExtension)
* insert NotUsed(implicitRules)
* insert NotUsed(text)
* insert NotUsed(route)

Invariant:  identifier-system-allowed
Description: "Identifier system must be the UMC product id system or match http://umcterminologies.org/mpid-<2-letter country code>"
Expression: "system = 'http://umcterminologies.org/umc-product-id' or system.matches('^http://umcterminologies[.]org/mpid-[a-zA-Z]{2}$')"
Severity:   #error

Invariant:  market-auth-number-system-pattern
Description: "Market Authorization Number identifier system must match the pattern http://umcterminologies.org/market-authorization-number-<2-letter country code>"
Expression: "system.matches('^http://umcterminologies[.]org/market-authorization-number-[a-zA-Z]{2}$')"
Severity:   #error
