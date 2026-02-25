//*******************************
// Request model
//*******************************

Profile: IngredientPhPIdReq
Parent: Ingredient
Id: Ingredient-phpid-req
Title: "Ingredient (PhPID request)"
Description: """This profile specified how the Ingredient is used in a PhPID request (as contained resource in a MedicinalProductDefinition) by the WHO-UMC PhP HL7 FHIR Service"""

* insert IngredientPhPIdCommon

* for only Reference( MedicinalProductDefinitionWhoPhPRequest ) //only #?

* substance 1..1
  * code.concept
    * coding 0..1
      * system 1..1
      * code 1..1 
    * text 1..1 //substance name
  * strength 1..1 // Enforce that one of the three following properties are set
    * ^short = "The quantity of substance, per presentation, or per volume or mass, and type of quantity."
    * presentation[x] only Ratio or Quantity
    * presentation[x] 0..1
    * textPresentation 0..1 //strength freetext
      * ^short = "Should only be used if the strength cannot be coded."
* obeys presentation-required
