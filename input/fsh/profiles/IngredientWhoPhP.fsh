//*******************************
// Request model
//*******************************
Profile: IngredientWhoPhP
Parent: Ingredient
Id: Ingredient-who-php
Title: "Ingredient (WHO PhP)"
Description: """This profile specified how the Ingredient is used in a PhPID request (as contained resource in a MedicinalProductDefinition) by the WHO-UMC PhP HL7 FHIR Service"""

* insert IngredientWhoPhPCommon

* for only Reference( MedicinalProductDefinitionWhoPhPRequest ) //only #?

* substance 1..1
  * code from VsSubstance (example)
  * code.concept
    * coding 0..1
      * system 1..1
      * code 1..1 //gsid value
    * text 1..1 //substance name
  * strength 1..1 // Enforce that one of the three following properties are set
    * ^short = "The quantity of substance, per presentation, or per volume or mass, and type of quantity."
    * presentation[x] only Ratio or Quantity
    * presentation[x] 0..1
    * textPresentation 0..1 //strength freetext
      * ^short = "Should only be used if the strength cannot be coded."
* obeys presentation-required

//*******************************
// Publish model
//*******************************

Profile: IngredientWhoPhPPublish
Parent: Ingredient
Id: Ingredient-who-php-publish
Title: "Ingredient (WHO PhP publish)"
Description: """This profile specified how the Ingredient is used in PhPID publishing (as contained resource in a MedicinalProductDefinition) by the WHO-UMC PhP HL7 FHIR Service"""

* insert IngredientWhoPhPCommon

* for only Reference( AdministrableProductDefinitionWhoPhP) 

* substance 1..
  * code from VsSubstance (example)
  * code.concept
    * coding 1..1
      * system = $gsid
      * system 1..
      * code 1..
    * text 1..
  * strength 1..1
    * ^short = "The quantity of substance, per presentation, or per volume or mass, and type of quantity."
      * presentationRatio 0..1
        * numerator 1..1
          * value 1..1
          * unit 1..1
          * unit from VsStrengthUnit
      * presentationQuantity 0..1
        * value 1..1
        * unit 1..1
        * unit from VsStrengthUnit

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
 

//*******************************
// Ingredient WHO PhP Common
//*******************************
RuleSet: IngredientWhoPhPCommon

* id 1..

* role from $vsingredient-role (example)

* insert NotUsed(substance.strength.textPresentation)
* insert NotUsed(substance.strength.textConcentration)
* insert NotUsed(status)
* insert NotUsed(allergenicIndicator)
* insert NotUsed(identifier)
* insert NotUsed(manufacturer)


//*******************************
// Constraints
//*******************************
Invariant:  presentation-required
Description: "Either presentationRatio or presentationQuantity or textPresentation MUST be populated"
Expression: "substance.strength.presentation.ofType(Ratio).exists() or substance.strength.presentation.ofType(Quantity).exists() or substance.strength.textPresentation.exists()"
Severity:   #error