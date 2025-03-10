//*******************************
// Request model
//*******************************
Profile: MedicinalProductDefinitionWhoPhPRequest
Parent: MedicinalProductDefinition
Id: MedicinalProductDefinition-who-php-req
Title: "MedicinalProductDefinition for PhPID request"
Description: """This profile specified how the MedicinalProductDefinition is used in request (for a new PhPID) (as contained resource) by the WHO-UMC IDMP FHIR Service"""
* insert MedicinalProductDefinitionCommon
* insert NotUsed(contained)
* identifier 1..1
  * system 1..
  * system from VsMpIdSystem (extensible)
  * value 1..
* description ^short = "General description of the medicinal product referred by the ePI"
* indication ^short = "Narrative text of the authorized indication(s) for this product."
* attachedDocument 1..*
  * display ^short = "The document that describes the product in detail"
  * display 1..1
* obeys name-type-required-multiple

//*******************************
// Publish model
//*******************************
Profile: MedicinalProductDefinitionWhoPhP
Parent: MedicinalProductDefinition
Id: MedicinalProductDefinition-who-php-pub
Title: "MedicinalProductDefinition for publication"
Description: """This profile specifies how the MedicinalProductDefinition is published by the WHO-UMC IDMP FHIR Service representing the WHODrug dictionary"""
* insert MedicinalProductDefinitionCommon
* identifier 1..
  * system 1..
  * system from VsMpIdSystem (extensible)
  * value 1..

* contained 0..2
* contained only Organization or RegulatedAuthorization

* insert NotUsed(contact)
* insert NotUsed(description)
* insert NotUsed(indication)

//*******************************
// Common
//*******************************
RuleSet: MedicinalProductDefinitionCommon
* id 1..

// add binding
* type ^short = "Regulatory type, e.g. Investigational or Authorized."
* domain ^short = "If this medicine applies to human or veterinary uses."
* domain from $VS-medicinal-product-domain (required)

// * version ^short = "A business identifier relating to a specific version of the product."

* status ^short = "The status within the lifecycle of this product record."

* combinedPharmaceuticalDoseForm from $pharmaceuticalForm (example)

* route from VsRouteOfAdministration (example)

* classification from VsAtcClassification (example)
  * ^short = "Allows the product to be classified by various systems (e.g. ATC)"

// Need to investigate which type we should use (and require?)
* name 1..
  * productName 1..1
  * productName ^short = "The full product name."

  * part 0..*
    * part ^short = "A fragment of a product name."
    * type ^short = "Type for this part of the name (e.g. strength part)"
  
  * usage 1..1 
    * country ^short = "Country where this name applies"
    * country 1..1 
      * coding 1..1
        * code 1..1
        * system = $iso3166
    * jurisdiction ^short = "Jurisdiction where this name applies"
      * coding 1..1
        * code 1..1
        * code from VsJurisdiction (example)
    * language ^short = "Language for this name"
    
// NOT USED ELEMENTS

* insert NotUsed(statusDate)
* insert NotUsed(legalStatusOfSupply)
* insert NotUsed(additionalMonitoringIndicator)
* insert NotUsed(specialMeasures) 
* insert NotUsed(pediatricUseIndicator)
* insert NotUsed(packagedMedicinalProduct)

* insert NotUsed(marketingStatus)
/* * marketingStatus 0.. //not used now? should it be mandatory??
  * country from $vsCountry (preferred)
  * dateRange ^short = "The date when the Medicinal Product is placed on the market by the Marketing Authorization Holder"
  * status ^short = "Status of the marketing of the medicinal product." */


//*******************************
// Constraints
//*******************************
Invariant:  name-type-required-multiple
Description: "If name length >1, require name.type"
Expression: "name.count()=1 or name.type.exists() "
Severity:   #error