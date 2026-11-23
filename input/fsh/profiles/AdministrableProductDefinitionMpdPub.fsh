//*******************************
// Publish model (Medicinal Product)
//*******************************

Profile: AdministrableProductDefinitionMpdPub
Parent: AdministrableProductDefinition
Id: AdministrableProductDefinition-mpd-pub
Title: "AdministrableProductDefinition (Medicinal Product Publish)"
Description: "This profile defines how the AdministrableProductDefinition of a published MedicinalProductDefinition is published by UMC terminologies. It is a contained resource of the MedicinalProductDefinition (it has no PhPID of its own) and describes the administrable form of the product. Its ingredients are given by contained Ingredient resources (Ingredient (Medicinal Product Publish)) that reference this resource with Ingredient.for."

* meta.source 1..1

// The APD is contained in the MPD and always refers back to it with formOf = "#"
* formOf 1..1
* formOf only Reference(MedicinalProductDefinitionPub)
* formOf.reference 1..1
* formOf.reference = "#"
  * ^short = "Reference to the containing MedicinalProductDefinition (always #)."

* status 1..1
  * ^short = "draft | active | retired | unknown"

* administrableDoseForm 0..1
  * ^short = "Administrable dose form (EDQM), e.g. Tablet."
* unitOfPresentation 0..1
  * ^short = "Unit of presentation (EDQM), e.g. Tablet."

* routeOfAdministration 1..*
  * ^short = "Route of administration (EDQM), e.g. Oral use."
  * insert NotUsed(modifierExtension)
  * code 1..1
    * ^short = "Route of administration code."
  * insert NotUsed(firstDose)
  * insert NotUsed(maxSingleDose)
  * insert NotUsed(maxDosePerDay)
  * insert NotUsed(maxDosePerTreatmentPeriod)
  * insert NotUsed(maxTreatmentPeriod)
  * insert NotUsed(targetSpecies)

// Ingredients are given by contained Ingredient resources (Ingredient.for = this APD), not by the CodeableConcept element
* insert NotUsed(ingredient)
* insert NotUsed(identifier)
* insert NotUsed(producedFrom)
* insert NotUsed(device)

* insert NotUsed(implicitRules)
* insert NotUsed(contained)
* insert NotUsed(modifierExtension)
