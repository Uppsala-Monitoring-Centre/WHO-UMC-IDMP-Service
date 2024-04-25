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
ValueSet: VsSubstance
Id: substance
Title: "Substances"
Description: "Substances"
* ^experimental = false
* include codes from system $gsid

/* /==========================
ValueSet: VsIngredientRole
Id: ingredientRole
Title: "Ingredient Role"
Description: "Ingredient Role; e.g.,active, excipient"
* ^experimental = false
* codes from system $ingredient-role
*/

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




CodeSystem: standardtermsCS
Id: standardtermsCS
Title: "standardtermsCS"
Description: "standardtermsCS"

* #0049 "Block"
* #0050 "Cachet"
* #0051 "Capsule"
* #0052 "Film"
* #0053 "Granules"
* #0054 "Gum"
* #0055 "Implant"
* #0056 "Impregnated material"
* #0058 "Lozenge"
* #0059 "Lyophilisate"
* #0060 "Pastille"
* #0061 "Patch"
* #0063 "Pessary"
* #0064 "Pillules"
* #0066 "Powder"
* #0067 "Stick"
* #0068 "Suppository"
* #0069 "Tablet"
* #0070 "Tea"
* #0071 "Cream"
* #0072 "Foam"
* #0073 "Gel"
* #0074 "Ointment"
* #0075 "Paste"
* #0076 "Poultice"
* #0077 "Collodion"
* #0080 "Emulsion"
* #0081 "Lacquer"
* #0082 "Liquid"
* #0083 "Solution"
* #0084 "Solvent"
* #0085 "Suspension"
* #0087 "Medicinal gas"
* #0088 "Insert"
* #0093 "Shampoo"
* #0095 "System"
* #0102 "Pouch"
* #0103 "Cement"
* #0114 "Herbal material (unprocessed)"
* #0115 "Live animal"
* #0004 "Administration"
* #0005 "Application"
* #0006 "Bathing"
* #0007 "Chewing"
* #0008 "Gargling"
* #0010 "Inhalation"
* #0011 "Injection"
* #0012 "Insertion"
* #0013 "Instillation"
* #0014 "Orodispersion"
* #0015 "Rinsing/washing"
* #0017 "Spraying"
* #0018 "Sucking"
* #0019 "Swallowing"
* #0111 "Burning"
* #0112 "Dialysis"
* #0113 "Implantation"
* #0021 "Auricular"
* #0022 "Cutaneous/Transdermal"
* #0023 "Dental"
* #0024 "Environmental"
* #0025 "Extracorporeal"
* #0027 "Intrauterine"
* #0028 "Intravesical/Urethral"
* #0029 "Nasal"
* #0030 "Ocular"
* #0031 "Oral"
* #0032 "Oromucosal"
* #0033 "Parenteral"
* #0034 "Pulmonary"
* #0035 "Rectal"
* #0036 "Vaginal"
* #0037 "Unknown/Miscellaneous"
* #0105 "Endocervical"
* #0106 "Gastric"
* #0107 "Gastroenteral"
* #0108 "Intestinal"
* #0109 "Intraperitoneal"
* #0044 "Delayed"
* #0045 "Prolonged"
* #0046 "Modified"
* #0047 "Conventional"
* #0048 "Unknown"


ValueSet: edqm-BDF
Id: edqm-BDF
Title: "EDQM PDF characteristics: Basic Dose Form"
Description: "EDQM Pharmaceutical dose forms characteristics: Basic Dose Form"
* ^status = #active
* ^experimental = false

* standardtermsCS#0049 "Block"
* standardtermsCS#0050 "Cachet"
* standardtermsCS#0051 "Capsule"
* standardtermsCS#0052 "Film"
* standardtermsCS#0053 "Granules"
* standardtermsCS#0054 "Gum"
* standardtermsCS#0055 "Implant"
* standardtermsCS#0056 "Impregnated material"
* standardtermsCS#0058 "Lozenge"
* standardtermsCS#0059 "Lyophilisate"
* standardtermsCS#0060 "Pastille"
* standardtermsCS#0061 "Patch"
* standardtermsCS#0063 "Pessary"
* standardtermsCS#0064 "Pillules"
* standardtermsCS#0066 "Powder"
* standardtermsCS#0067 "Stick"
* standardtermsCS#0068 "Suppository"
* standardtermsCS#0069 "Tablet"
* standardtermsCS#0070 "Tea"
* standardtermsCS#0071 "Cream"
* standardtermsCS#0072 "Foam"
* standardtermsCS#0073 "Gel"
* standardtermsCS#0074 "Ointment"
* standardtermsCS#0075 "Paste"
* standardtermsCS#0076 "Poultice"
* standardtermsCS#0077 "Collodion"
* standardtermsCS#0080 "Emulsion"
* standardtermsCS#0081 "Lacquer"
* standardtermsCS#0082 "Liquid"
* standardtermsCS#0083 "Solution"
* standardtermsCS#0084 "Solvent"
* standardtermsCS#0085 "Suspension"
* standardtermsCS#0087 "Medicinal gas"
* standardtermsCS#0088 "Insert"
* standardtermsCS#0093 "Shampoo"
* standardtermsCS#0095 "System"
* standardtermsCS#0102 "Pouch"
* standardtermsCS#0103 "Cement"
* standardtermsCS#0114 "Herbal material (unprocessed)"
* standardtermsCS#0115 "Live animal"



ValueSet: edqm-AME
Id: edqm-AME
Title: "EDQM PDF characteristics: Administration Method"
Description: "EDQM Pharmaceutical dose forms characteristics: Administration Method"
* ^status = #active
* ^experimental = false


* standardtermsCS#0004 "Administration"
* standardtermsCS#0005 "Application"
* standardtermsCS#0006 "Bathing"
* standardtermsCS#0007 "Chewing"
* standardtermsCS#0008 "Gargling"
* standardtermsCS#0010 "Inhalation"
* standardtermsCS#0011 "Injection"
* standardtermsCS#0012 "Insertion"
* standardtermsCS#0013 "Instillation"
* standardtermsCS#0014 "Orodispersion"
* standardtermsCS#0015 "Rinsing/washing"
* standardtermsCS#0017 "Spraying"
* standardtermsCS#0018 "Sucking"
* standardtermsCS#0019 "Swallowing"
* standardtermsCS#0111 "Burning"
* standardtermsCS#0112 "Dialysis"
* standardtermsCS#0113 "Implantation"



ValueSet: edqm-ISI
Id: edqm-ISI
Title: "EDQM PDF characteristics: Intended Site"
Description: "EDQM Pharmaceutical dose forms characteristics: Intended Site"

* ^status = #active
* ^experimental = false
* standardtermsCS#0021 "Auricular"
* standardtermsCS#0022 "Cutaneous/Transdermal"
* standardtermsCS#0023 "Dental"
* standardtermsCS#0024 "Environmental"
* standardtermsCS#0025 "Extracorporeal"
* standardtermsCS#0027 "Intrauterine"
* standardtermsCS#0028 "Intravesical/Urethral"
* standardtermsCS#0029 "Nasal"
* standardtermsCS#0030 "Ocular"
* standardtermsCS#0031 "Oral"
* standardtermsCS#0032 "Oromucosal"
* standardtermsCS#0033 "Parenteral"
* standardtermsCS#0034 "Pulmonary"
* standardtermsCS#0035 "Rectal"
* standardtermsCS#0036 "Vaginal"
* standardtermsCS#0037 "Unknown/Miscellaneous"
* standardtermsCS#0105 "Endocervical"
* standardtermsCS#0106 "Gastric"
* standardtermsCS#0107 "Gastroenteral"
* standardtermsCS#0108 "Intestinal"
* standardtermsCS#0109 "Intraperitoneal"



ValueSet: edqm-RCA
Id: edqm-RCA
Title: "EDQM PDF characteristics: Release Characteristics"
Description: "EDQM Pharmaceutical dose forms characteristics: Release Characteristics"
* ^status = #active
* ^experimental = false

* standardtermsCS#0044 "Delayed"
* standardtermsCS#0045 "Prolonged"
* standardtermsCS#0046 "Modified"
* standardtermsCS#0047 "Conventional"
* standardtermsCS#0048 "Unknown"