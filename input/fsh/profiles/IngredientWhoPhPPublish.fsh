Profile: IngredientWhoPhPPublish
Parent: Ingredient
Id: Ingredient-who-php-publish
Title: "Ingredient (WHO PhP publish)"
Description: """This profile specified how the Ingredient is used in PhPID publishing (as contained resource in a MedicinalProductDefinition) by the WHO-UMC PhP HL7 FHIR Service"""

//* insert SetFmmandStatusRule ( 0, draft )
* id 1..

* for only Reference( AdministrableProductDefinitionWhoPhP) 
* role from $vsingredient-role (example)

* substance 1..
  * code from VsSubstance (example)
  * code.concept
    * coding 1..1
      * system = $gsid
      * system 1..
      * code 1..
    * text 1..
  * strength 0..
    * ^short = "The quantity of substance, per presentation, or per volume or mass, and type of quantity."
  
  * strength.referenceStrength ^short = "Strength expressed in terms of a reference substance"
    * substance ^short = "Relevant reference substance."
    * substance.concept
      * coding 1..1
        * system = $gsid
        * system 1..
        * code 1..
      * text 1..

    * strength[x] ^short = "Strength of the reference substance."
 
* insert NotUsed(substance.strength.textPresentation)
* insert NotUsed(substance.strength.textConcentration)
* insert NotUsed(status)
* insert NotUsed(allergenicIndicator)
* insert NotUsed(identifier)
* insert NotUsed(manufacturer)