// TODO: VCN2025 - Check that this profile is up to date
Profile: AdministrableProductDefinitionWhoPhP
Parent: AdministrableProductDefinition
Id: AdministrableProductDefinition-who-php
Title: "AdministrableProductDefinition (WHO PhP)"
Description: "This profile specified how the AdministrableProductDefinition is published by the WHO-UMC IDMP Service"

* extension contains $parent-php-extension named parentPhp 0..3

// PDF CHARACTERISTICS EXTENSIONS
* extension contains $pdfCharacteristics-bdf-ext named basicDoseForm 0..1
* extension[basicDoseForm] ^short = "Basic Dose Form"
* extension contains $pdfCharacteristics-isi-ext named intendedSite 0..3
* extension[intendedSite] ^short = "Intended Site"
* extension contains $pdfCharacteristics-rca-ext named releaseCharacteristics 0..1
* extension[releaseCharacteristics] ^short = "Release Characteristics"
* extension contains $pdfCharacteristics-ame-ext named administrationMethod 0..3
* extension[administrationMethod] ^short = "Administration Method"

* contained 1..
* contained only IngredientWhoPhPPublish
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
//The below construct is not needed
// * formOf 1..
//   * extension contains $data-absent-reason named data-absent-reason 0..
//   * extension[data-absent-reason].valueCode = #unsupported

// ADF is intended to be like chewable tablet acc to EDQM. 
// The PhPID is only using Tablet as concept (the BDF) so two APDs with similar (but different) ADFs will have the same PhPID
// Therefore... we do not use ADF but the extensions associated with the Pharmaceutical Form
* administrableDoseForm 0..0

//* routeOfAdministration
//  * code from VsRouteOfAdministration (example)

* unitOfPresentation 0..0
* producedFrom 0..0
* device 0..0
