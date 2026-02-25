//*******************************
// Request model
//*******************************
Profile: MedicinalProductDefinitionPhPIdReq
Parent: MedicinalProductDefinition
Id: MedicinalProductDefinition-phpid-req
Title: "MedicinalProductDefinition (PhPID request)"
Description: """This profile specified how the MedicinalProductDefinition is used in request (for a new PhPID) (as contained resource) by the WHO-UMC IDMP FHIR Service"""
* insert MedicinalProductDefinitionPhPIdCommon
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

* name 1..
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


* contact 0..1

* obeys name-type-required-multiple
