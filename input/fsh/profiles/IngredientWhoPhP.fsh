Profile: IngredientWhoPhP
Parent: Ingredient
Id: Ingredient-who-php
Title: "Ingredient (WHO PhP)"
Description: """This profile specified how the Ingredient is used in a PhPID request (as contained resource in a MedicinalProductDefinition) by the WHO-UMC PhP HL7 FHIR Service"""

* insert SetFmmandStatusRule ( 0, draft )
* id 1..

* for only Reference( AdministrableProductDefinitionWhoPhP or MedicinalProductDefinitionWhoPhPRequest ) //only #?
* role from VsIngredientRole (example)

* substance 1..
  // * code from VsSubstance (example)
  * code.concept
    * coding 0..1
      * system = $gsid
      * system 1..
      * code 1..
    * text 1..
  * strength 0..

  // to be better specified review
    * ^short = "The quantity of substance, per presentation, or per volume or mass, and type of quantity."
 
 /*  * strength.textPresentation ^short = "Text of either the whole presentation strength or a part of it"
  * strength.textConcentration ^short = "Text of either the whole concentration strength or a part of it"
  * strength.basis ^short = "A code that indicates if the strength is, for example, based on the ingredient substance as stated or on the substance base (when the ingredient is a salt)"
  * strength.referenceStrength ^short = "Strength expressed in terms of a reference substance"
    * substance ^short = "Relevant reference substance."
    * strength[x] ^short = "Strength of the reference substance."
 */

* insert NotUsed(status)
* insert NotUsed(allergenicIndicator)
* insert NotUsed(identifier)
* insert NotUsed(manufacturer)
