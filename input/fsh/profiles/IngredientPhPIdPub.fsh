//*******************************
// Publish model
//*******************************

Profile: IngredientPhPIdPub
Parent: Ingredient
Id: Ingredient-phpid-pub
Title: "Ingredient (PhPID publish)"
Description: "This profile defines how the Ingredient is used for PhPID publish (as contained resource in an AdministrableProductDefinition) by UMC terminologies"

* insert IngredientPhPIdCommon

* for only Reference(AdministrableProductDefinitionPub) 

* insert NotUsed(implicitRules)
* insert NotUsed(contained)
* insert NotUsed(modifierExtension)

* substance 1..
  * insert NotUsed(modifierExtension)
  * code only CodeableReference(SubstanceDefinition-pub) 
  * code from $gsid
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
      * textPresentation 1..1 //strength freetext
  
  * insert NotUsed(strength.modifierExtension)
  * insert NotUsed(strength.presentationRatio)
  * insert NotUsed(strength.presentationRatioRange)
  * insert NotUsed(strength.presentationCodeableConcept)

  * strength.referenceStrength ^short = "Strength expressed in terms of a reference substance"
  * strength.referenceStrength 0..1
    * insert NotUsed(modifierExtension)
    * substance ^short = "Relevant reference substance."
    * substance only CodeableReference(SubstanceDefinition-pub)
    * substance from $gsid
    * substance.concept
      * coding 0..1
        * system = $gsid
        * system 1..1
        * code 1..1
      * text 0..1

    * strength[x] only Quantity
    * strength[x] ^short = "Strength of the reference substance."


