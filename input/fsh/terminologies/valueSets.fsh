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


/*
CodeSystem: StandardtermsCS
Id: StandardtermsCS
Title: "StandardtermsCS"
Description: "StandardtermsCS"

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

ValueSet: EdqmBDF
Id: EdqmBDF
Title: "EDQM PDF characteristics: Basic Dose Form"
Description: "EDQM Pharmaceutical dose forms characteristics: Basic Dose Form"
* ^status = #active
* ^experimental = false

* StandardtermsCS#0050 "Cachet"
* StandardtermsCS#0049 "Block"
* StandardtermsCS#0051 "Capsule"
* StandardtermsCS#0052 "Film"
* StandardtermsCS#0053 "Granules"
* StandardtermsCS#0054 "Gum"
* StandardtermsCS#0055 "Implant"
* StandardtermsCS#0056 "Impregnated material"
* StandardtermsCS#0058 "Lozenge"
* StandardtermsCS#0059 "Lyophilisate"
* StandardtermsCS#0060 "Pastille"
* StandardtermsCS#0061 "Patch"
* StandardtermsCS#0063 "Pessary"
* StandardtermsCS#0064 "Pillules"
* StandardtermsCS#0066 "Powder"
* StandardtermsCS#0067 "Stick"
* StandardtermsCS#0068 "Suppository"
* StandardtermsCS#0069 "Tablet"
* StandardtermsCS#0070 "Tea"
* StandardtermsCS#0071 "Cream"
* StandardtermsCS#0072 "Foam"
* StandardtermsCS#0073 "Gel"
* StandardtermsCS#0074 "Ointment"
* StandardtermsCS#0075 "Paste"
* StandardtermsCS#0076 "Poultice"
* StandardtermsCS#0077 "Collodion"
* StandardtermsCS#0080 "Emulsion"
* StandardtermsCS#0081 "Lacquer"
* StandardtermsCS#0082 "Liquid"
* StandardtermsCS#0083 "Solution"
* StandardtermsCS#0084 "Solvent"
* StandardtermsCS#0085 "Suspension"
* StandardtermsCS#0087 "Medicinal gas"
* StandardtermsCS#0088 "Insert"
* StandardtermsCS#0093 "Shampoo"
* StandardtermsCS#0095 "System"
* StandardtermsCS#0102 "Pouch"
* StandardtermsCS#0103 "Cement"
* StandardtermsCS#0114 "Herbal material (unprocessed)"
* StandardtermsCS#0115 "Live animal"

ValueSet: EdqmAME
Id: EdqmAME
Title: "EDQM PDF characteristics: Administration Method"
Description: "EDQM Pharmaceutical dose forms characteristics: Administration Method"
* ^status = #active
* ^experimental = false

* StandardtermsCS#0004 "Administration"
* StandardtermsCS#0005 "Application"
* StandardtermsCS#0006 "Bathing"
* StandardtermsCS#0007 "Chewing"
* StandardtermsCS#0008 "Gargling"
* StandardtermsCS#0010 "Inhalation"
* StandardtermsCS#0011 "Injection"
* StandardtermsCS#0012 "Insertion"
* StandardtermsCS#0013 "Instillation"
* StandardtermsCS#0014 "Orodispersion"
* StandardtermsCS#0015 "Rinsing/washing"
* StandardtermsCS#0017 "Spraying"
* StandardtermsCS#0018 "Sucking"
* StandardtermsCS#0019 "Swallowing"
* StandardtermsCS#0111 "Burning"
* StandardtermsCS#0112 "Dialysis"
* StandardtermsCS#0113 "Implantation"

ValueSet: EdqmISI
Id: EdqmISI
Title: "EDQM PDF characteristics: Intended Site"
Description: "EDQM Pharmaceutical dose forms characteristics: Intended Site"

* ^status = #active
* ^experimental = false
* StandardtermsCS#0021 "Auricular"
* StandardtermsCS#0022 "Cutaneous/Transdermal"
* StandardtermsCS#0023 "Dental"
* StandardtermsCS#0024 "Environmental"
* StandardtermsCS#0025 "Extracorporeal"
* StandardtermsCS#0027 "Intrauterine"
* StandardtermsCS#0028 "Intravesical/Urethral"
* StandardtermsCS#0029 "Nasal"
* StandardtermsCS#0030 "Ocular"
* StandardtermsCS#0031 "Oral"
* StandardtermsCS#0032 "Oromucosal"
* StandardtermsCS#0033 "Parenteral"
* StandardtermsCS#0034 "Pulmonary"
* StandardtermsCS#0035 "Rectal"
* StandardtermsCS#0036 "Vaginal"
* StandardtermsCS#0037 "Unknown/Miscellaneous"
* StandardtermsCS#0105 "Endocervical"
* StandardtermsCS#0106 "Gastric"
* StandardtermsCS#0107 "Gastroenteral"
* StandardtermsCS#0108 "Intestinal"
* StandardtermsCS#0109 "Intraperitoneal"

ValueSet: EdqmRCA
Id: EdqmRCA
Title: "EDQM PDF characteristics: Release Characteristics"
Description: "EDQM Pharmaceutical dose forms characteristics: Release Characteristics"
* ^status = #active
* ^experimental = false

* StandardtermsCS#0044 "Delayed"
* StandardtermsCS#0045 "Prolonged"
* StandardtermsCS#0046 "Modified"
* StandardtermsCS#0047 "Conventional"
* StandardtermsCS#0048 "Unknown"

*/