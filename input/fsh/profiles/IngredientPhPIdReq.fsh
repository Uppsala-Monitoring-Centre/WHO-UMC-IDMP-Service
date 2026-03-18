//*******************************
// Request model
//*******************************

Profile: IngredientPhPIdReq
Parent: Ingredient
Id: Ingredient-req
Title: "Ingredient (request)"
Description: "This profile defines how the Ingredient is used for request (as contained resource in a MedicinalProductDefinition) by UMC terminologies"

* insert IngredientPhPIdCommon

* for only Reference( MedicinalProductDefinitionReq ) //only #?

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

  * strength.referenceStrength
    * insert NotUsed(strengthRatio)
    * insert NotUsed(strengthRatioRange)

  * strength.referenceStrength ^short = "Strength expressed in terms of a reference substance"
  * strength.referenceStrength 0..1
    * insert NotUsed(modifierExtension)
    * substance ^short = "Relevant reference substance."
    * substance from $gsid
    * substance.concept
      * coding 0..1
        * system = $gsid
        * system 1..1
        * code 1..1
      * text 0..1

    * strength[x] ^short = "Strength of the reference substance."

* obeys presentation-required

