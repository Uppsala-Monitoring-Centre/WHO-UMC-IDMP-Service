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
* contact 1..1
  * type ^short = "Should be ProposedMAH"
  * contact ^short = "A specific contact, person (in a role), or an organization for this product"
  * contact only Reference(Organization) //MarketingAuthorizationHolder-who-php
* description ^short = "General description of the medicinal product referred by the ePI"
* indication ^short = "Narrative text of the authorized indication(s) for this product."
  
//*******************************
// Publish model
//*******************************
Profile: MedicinalProductDefinitionWhoPhP
Parent: MedicinalProductDefinition
Id: MedicinalProductDefinition-who-php-pub
Title: "MedicinalProductDefinition for publication"
Description: """This profile specified how the MedicinalProductDefinition is published by the WHO-UMC IDMP FHIR Service representing the WHODrug dictionary"""
* insert MedicinalProductDefinitionCommon
* contained 0..*
* contained only IngredientWhoPhP or Organization //MarketingAuthorizationHolder-who-php
* contact 0..*
  * type ^short = "Allows the contact to be classified"
  * contact ^short = "A specific contact organization for this product"
* insert NotUsed(description)
* insert NotUsed(indication)

//*******************************
// Common
//*******************************
RuleSet: MedicinalProductDefinitionCommon
* insert SetFmmandStatusRule ( 0, draft )
* id 1..
* identifier 1..
  * system 1..
  * system from VsMpIdSystem (extensible)
  * value 1..

// add binding
* type ^short = "Regulatory type, e.g. Investigational or Authorized."
* domain ^short = "If this medicine applies to human or veterinary uses."
* domain from $VS-medicinal-product-domain (required)

// * version ^short = "A business identifier relating to a specific version of the product."

* status ^short = "The status within the lifecycle of this product record."

* combinedPharmaceuticalDoseForm from VsDoseForm (example)
* route from VsRouteOfAdministration (example)


* classification from VsAtcClassification (example)
  * ^short = "Allows the product to be classified by various systems (e.g. ATC)"

* marketingStatus 0.. //not used now?should it be mandatory??
  * country  from VsCountry (preferred)
  * dateRange ^short = "The date when the Medicinal Product is placed on the market by the Marketing Authorization Holder"
  * status ^short = "Status of the marketing of the medicinal product."

* name 1..
  * productName 1..1
  * productName ^short = "The full product name."
  * insert NotUsed(type)

  * part 0..*
    * part ^short = "A fragment of a product name."
    * type ^short = "Type for this part of the name (e.g. strength part)"
  
  * usage 1..* 
    * country ^short = "Country where this name applies"
    * jurisdiction ^short = "Jurisdiction where this name applies"
    * language ^short = "Language for this name"

// NOT USED ELEMENTS

* insert NotUsed(statusDate)
* insert NotUsed(legalStatusOfSupply)
* insert NotUsed(additionalMonitoringIndicator)
* insert NotUsed(specialMeasures)
* insert NotUsed(pediatricUseIndicator)
* insert NotUsed(pediatricUseIndicator)
* insert NotUsed(packagedMedicinalProduct)

