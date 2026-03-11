//*******************************
// Publish model
//*******************************
Profile: MedicinalProductDefinitionPub
Parent: MedicinalProductDefinition
Id: MedicinalProductDefinition-pub
Title: "MedicinalProductDefinition (publish)"
Description: "This profile defines how the MedicinalProductDefinition representing the record in WHODrug, UMC's drug dictionary, is published by UMC terminologies"
* insert MedicinalProductDefinitionPhPIdCommon
* identifier 1..1
  * system 1..
  * system = $umcProductId
  * value 1..

* name 1..
  * usage 0..
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

* contained 0..2
* contained only Organization or RegulatedAuthorization
* contact 0..0

* insert NotUsed(description)
* insert NotUsed(indication)

* insert NotUsed(modifierExtension)
* insert NotUsed(contained)
* insert NotUsed(implicitRules)
* insert NotUsed(text)
* insert NotUsed(route)
