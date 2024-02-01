//=========================
ValueSet: VsDoseForm
Id: doseForm
Title: "Dose Form"
Description: "The dose form for a single part product, or combined form of a multiple part product"
* ^experimental = false
* codes from system $combined-dose-form

//=========================
ValueSet: VsAdministrableDoseForm
Id: administrableDoseForm
Title: "Administrable Pharmaceutical Dose Form"
Description: "Administrable Pharmaceutical Dose Form"
* ^experimental = false
* codes from system $administrable-dose-form

//=========================
ValueSet: VsManufacturedDoseForm
Id: manufacturedDoseForm
Title: "Manufactured Dose Form"
Description: "Manufactured Dose Form"
* ^experimental = false
* codes from system $manufactured-dose-form

//=========================
ValueSet: VsRouteOfAdministration
Id: routeOfAdministration
Title: "Route Of Administration"
Description:  "Route Of Administration"
* ^status = #draft
* ^experimental = false
* ^copyright = """This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement

The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the Creative Commons Attribution 4.0 International Public License. For more information, see SNOMED IPS Terminology

The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.org"""

* include codes from system $sct where concept descendent-of #284009009

//==========================
ValueSet: VsUnitofPresentation
Id: unitofPresentation
Title: "Units of Presentation"
Description: "Units of Presentation"
* ^experimental = false
* codes from system $unit-of-presentation


//==========================
ValueSet: VsCountry
Id: country
Title: "ISO Country two letter code"
Description: "ISO Country two letter code"
* ^experimental = false
* codes from valueset http://terminology.hl7.org/ValueSet/v3-Country2

//==========================
ValueSet: VsSubstance
Id: substance
Title: "Substances"
Description: "Substances"
* ^experimental = false
* include codes from system $gsid

 //==========================
ValueSet: VsIngredientRole
Id: ingredientRole
Title: "Ingredient Role"
Description: "Ingredient Role; e.g.,active, excipient"
* ^experimental = false
* codes from system $ingredient-role

//==========================
ValueSet: VsAtcClassification
Id: atcClassification
Title: "WHO ATC"
Description: "World Health Organization Anatomical Therapeutic Chemical (ATC) classification system"
* ^experimental = false
* codes from system $atc 
* ^copyright = "This artifact includes content from Anatomical Therapeutic Chemical (ATC) classification system. ATC codes are copyright World Health Organization (WHO) Collaborating Centre for Drug Statistics Methodology. Terms & Conditions in https://www.whocc.no/use_of_atc_ddd/"

//=========================
ValueSet: VsPhpIdLevels
Id: phpid-type
Title: "Identifier Type Value Set"
Description: "Identifier Type Value Set"
* ^experimental = false
* codes from system PhpIdLevels

//=========================
ValueSet: VsMpIdSystem
Id: mpid-system
Title: "MPID system"
Description: "Medicinal Product identification systems"
* ^experimental = false
* $uri#http://hl7.org/fhir/sid/ndc