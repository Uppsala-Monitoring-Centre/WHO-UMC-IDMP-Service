Profile: AdministrableProductDefinitionPub
Parent: AdministrableProductDefinition
Id: AdministrableProductDefinition-pub
Title: "AdministrableProductDefinition (PhPID publish)"
Description: "This profile specified how the AdministrableProductDefinition is published by the WHO-UMC IDMP Service"

* extension contains $parent-phpid-extension named parentPhPId 0..3

// PDF CHARACTERISTICS EXTENSIONS
* extension contains $pdfCharacteristics-bdf-ext named basic-doseform 0..1
* extension[basic-doseform] ^short = "Basic Dose Form"
* extension contains $pdfCharacteristics-isi-ext named intended-site 0..3
* extension[intended-site] ^short = "Intended Site"
* extension contains $pdfCharacteristics-rca-ext named release-characteristics 0..1
* extension[release-characteristics] ^short = "Release Characteristics"
* extension contains $pdfCharacteristics-ame-ext named administration-method 0..3
* extension[administration-method] ^short = "Administration Method"

* contained 1..
* contained only IngredientPhPIdPublish
* id 1..
  * ^short = "PhPID"
  * ^definition =  "This is always values with the PhPID"
* identifier 1..1
  * type 1..1 
  * type from VsPhpIdLevels (required)
  * system 1..1
  * value 1..1

* status 1..1 
  * ^short = "draft | active | retired |unknown"

* formOf 0..0

// ADF is intended to be like chewable tablet acc to EDQM. 
// The PhPID is only using Tablet as concept (the BDF) so two APDs with similar (but different) ADFs will have the same PhPID
// Therefore... we do not use ADF but the extensions associated with the Pharmaceutical Form
* administrableDoseForm 0..0

//* routeOfAdministration
//  * code from VsRouteOfAdministration (example)

* unitOfPresentation 0..0
* producedFrom 0..0
* device 0..0
