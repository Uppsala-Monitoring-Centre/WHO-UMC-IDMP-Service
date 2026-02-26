//*******************************
// Common
//*******************************
RuleSet: MedicinalProductDefinitionPhPIdCommon
* id 1..

// add binding
* type ^short = "Regulatory type, e.g. Investigational or Authorized."
* domain ^short = "If this medicine applies to human or veterinary uses."
* domain from $VS-medicinal-product-domain (required)

// * version ^short = "A business identifier relating to a specific version of the product."

* status ^short = "The status within the lifecycle of this product record."

* combinedPharmaceuticalDoseForm from VsPharmaceuticalForm (example)

* route from VsRouteOfAdministration (example)

* classification from VsPhpIdLevel (example)
  * ^short = "Allows the product to be classified by PhPID Level (e.g. phpid-level-4)"

// Need to investigate which type we should use (and require?)
* name 1..
  * productName 1..1
  * productName ^short = "The full product name."

  * type 0..1
  * type ^short = "Type of product name, such as rINN, BAN, Proprietary, Non-Proprietary."

  * part 0..*
    * part ^short = "A fragment of a product name."
    * type ^short = "Type for this part of the name (e.g. strength part)"
 
  // Cardinality of name.usage is different between req and pub versions, so it is specified in those profiles
    
// NOT USED ELEMENTS

* insert NotUsed(statusDate)
* insert NotUsed(legalStatusOfSupply)
* insert NotUsed(additionalMonitoringIndicator)
* insert NotUsed(specialMeasures) 
* insert NotUsed(pediatricUseIndicator)
* insert NotUsed(packagedMedicinalProduct)
* insert NotUsed(marketingStatus)
* insert NotUsed(contact)
/* * marketingStatus 0.. //not used now? should it be mandatory??
  * country from $vsCountry (preferred)
  * dateRange ^short = "The date when the Medicinal Product is placed on the market by the Marketing Authorization Holder"
  * status ^short = "Status of the marketing of the medicinal product." */


//*******************************
// Constraints
//*******************************
Invariant:  name-type-required-multiple
Description: "If name length >1, require name.type"
Expression: "name.count()=1 or name.type.exists()"
Severity:   #error