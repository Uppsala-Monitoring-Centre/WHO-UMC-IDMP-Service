//*******************************
// Publish model
//*******************************
Profile: MedicinalProductDefinitionPhPIdPub
Parent: MedicinalProductDefinition
Id: MedicinalProductDefinition-phpid-pub
Title: "MedicinalProductDefinition (PhPID publish)"
Description: """This profile specifies how the MedicinalProductDefinition is published by the WHO-UMC IDMP FHIR Service representing the WHODrug dictionary"""
* insert MedicinalProductDefinitionPhPIdCommon
* identifier 1..
  * system 1..
  * system from VsMpIdSystem (extensible)
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
