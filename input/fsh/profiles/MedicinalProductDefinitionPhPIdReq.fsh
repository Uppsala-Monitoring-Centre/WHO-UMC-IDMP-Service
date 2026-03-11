//*******************************
// Request model
//*******************************
Profile: MedicinalProductDefinitionReq
Parent: MedicinalProductDefinition
Id: MedicinalProductDefinition-req
Title: "MedicinalProductDefinition (request)"
Description: "This profile defines how the MedicinalProductDefinition is used in request (as contained resource in a Task) by UMC terminologies"
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
  * usage 1..
    * country ^short = "Country where this name applies"
    * country 1..1 
      * coding 1..1
        * code 1..1
        * system = $iso3166
    * jurisdiction ^short = "Jurisdiction where this name applies"
    * jurisdiction from VsJurisdiction (example)
      * coding 1..1
        * code 1..1
        * system = "http://umcterminologies.org/CodeSystem/jurisdiction"
        * code from VsJurisdiction (example)
    * language ^short = "Language for this name"


* contact 0..1

* obeys name-type-required-multiple
