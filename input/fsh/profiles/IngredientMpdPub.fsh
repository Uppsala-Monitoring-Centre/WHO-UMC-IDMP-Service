//*******************************
// Publish model (Medicinal Product)
//*******************************

Profile: IngredientMpdPub
Parent: Ingredient
Id: Ingredient-mpd-pub
Title: "Ingredient (Medicinal Product Publish)"
Description: "This profile defines how the Ingredient of a published MedicinalProductDefinition is published by UMC terminologies. Unlike the PhPID publish profile, a GSID is not required: the substance can be given by name only."

* insert IngredientPhPIdCommon

* meta.source 1..1

// The ingredient always references the containing MPD (#). It may also reference the contained APD of the product (#<apd id>),
// i.e. the ingredient is then part of that administrable form.
* for only Reference(MedicinalProductDefinitionPub or AdministrableProductDefinitionMpdPub)
* for ^short = "The product (MedicinalProductDefinition, always #) and optionally the administrable product (AdministrableProductDefinition, #<apd id>) this ingredient is part of."

* insert NotUsed(implicitRules)
* insert NotUsed(contained)
* insert NotUsed(modifierExtension)

* substance 1..
  * insert NotUsed(modifierExtension)
  // substance.code is 1..1 in the base Ingredient resource and cannot be made optional.
  // The GSID (coding) is optional; the substance name (text) is always required.
  * code only CodeableReference(SubstanceDefinition-pub)
  * code from $gsid
  * code ^short = "The substance, given by name (text) and optionally by GSID (coding)."
  * code.concept 1..1
    * coding 0..1
      * ^short = "GSID of the substance, if available."
      * system = $gsid
      * system 1..
      * code 1..
    * text 1..
      * ^short = "Substance name."
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
