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

//=========================
ValueSet: VsPhpIdLevel
Id: phpid-level
Title: "PhPID Level Value Set"
Description: "PhPID Level Value Set"
* ^experimental = false
* codes from system CsPhpIdLevel

//=========================
ValueSet: VsStrengthUnit
Id: strength-unit
Title: "Strength Unit Value Set"
Description: "Strength Unit Value Set"
* ^experimental = false
* codes from system CsStrengthUnit
* codes from system $ucum

//=========================
ValueSet: VsSubstanceNameAuthority
Id: substance-name-authority
Title: "Substance Name Authority Value Set"
Description: "Substance Name Authority Value Set"
* ^experimental = false
* codes from system CsSubstanceNameAuthority
* codes from system $substanceNameAuthority

//=========================
ValueSet: VsRequestStatus
Id: request-status
Title: "Request Status Value Set"
Description: "Request Status Value Set"
* ^experimental = false
* $request-status#requested "Requested"
* $request-status#accepted "Accepted"
* $request-status#in-progress "In Progress"
* $request-status#rejected "Rejected"
* $request-status#completed "Completed"

//=========================
ValueSet: VsJurisdiction
Id: jurisdiction
Title: "Jurisdiction Value Set"
Description: "Jurisdiction Value Set"
* ^experimental = false
* codes from system CsJurisdiction
* codes from system $iso3166

//=========================
ValueSet: VsMpIdSystem
Id: mpid-system
Title: "MPID system"
Description: "Medicinal Product identification systems"
* ^experimental = false
* $uri#http://hl7.org/fhir/sid/ndc

//=========================
ValueSet: VsTaskRequestCode
Id: task-request-code
Title: "Task Request Code Value Set"
Description: "Task Request Code Value Set"
* ^experimental = false
* codes from system CsTaskRequestCode
