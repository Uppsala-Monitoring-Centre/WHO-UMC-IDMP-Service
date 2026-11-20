//=========================
ValueSet: VsPhpIdLevel
Id: phpid-level
Title: "PhPID Level Value Set"
Description: "PhPID Level Value Set"
* ^experimental = false
* codes from system CsPhpIdLevel

//=========================
ValueSet: VsMpdNameType
Id: mpd-name-type
Title: "MedicinalProductDefinition Name Type Value Set"
Description: "Types of names used in MedicinalProductDefinition.name.type"
* ^experimental = false
* codes from system CsMpdNameType

//=========================
ValueSet: VsAtcSystem
Id: atc-system
Title: "ATC Code System Value Set"
Description: "The ATC code systems (system URIs) allowed in MedicinalProductDefinition.classification"
* ^experimental = false
* codes from system CsAtcSystem

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
ValueSet: VsTaskRequestCode
Id: task-request-code
Title: "Task Request Code Value Set"
Description: "Task Request Code ValueSet"
* ^experimental = false
* codes from system CsTaskRequestCode
