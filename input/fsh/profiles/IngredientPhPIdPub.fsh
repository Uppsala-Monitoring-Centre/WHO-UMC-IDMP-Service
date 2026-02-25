//*******************************
// Publish model
//*******************************

Profile: IngredientPhPIdPub
Parent: Ingredient
Id: Ingredient-phpid-pub
Title: "Ingredient (PhPID publish)"
Description: """This profile specified how the Ingredient is used in PhPID publishing (as contained resource in a MedicinalProductDefinition) by the WHO-UMC PhP HL7 FHIR Service"""

* insert IngredientPhPIdCommon

* for only Reference(AdministrableProductDefinitionPub) 

* substance 1..
  * code.concept
    * coding 1..1
      * system = $gsid
      * system 1..
      * code 1..
    * text 1..
  * strength 0..1
    * ^short = "The quantity of substance, per presentation, or per volume or mass, and type of quantity."
      * presentationRatio 0..1
        * numerator 1..1
          * value 1..1
          * unit 1..1
          * unit from VsStrengthUnit
        * denominator 1..1
          * value 1..1
          * unit 1..1
          * unit from VsStrengthUnit
      * presentationQuantity 0..1
        * value 1..1
        * unit 1..1
        * unit from VsStrengthUnit
      * textPresentation 0..1 //strength freetext // TODO correct position?


  * strength.referenceStrength ^short = "Strength expressed in terms of a reference substance"
  * strength.referenceStrength 0..1
    * substance ^short = "Relevant reference substance."
    * substance.concept
      * coding 0..1
        * system = $gsid
        * system 1..1
        * code 1..1
      * text 0..1

    * strength[x] ^short = "Strength of the reference substance."
 