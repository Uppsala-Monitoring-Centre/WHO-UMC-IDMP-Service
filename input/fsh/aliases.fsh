//============== ALIAS ===============
Alias: $medicinal-product-type = http://hl7.org/fhir/medicinal-product-type
Alias: $medicinal-product-domain = http://hl7.org/fhir/medicinal-product-domain
Alias: $publication-status = http://hl7.org/fhir/publication-status
Alias: $phpid = http://umcterminologies.org/phpid
Alias: $gsid = http://umcterminologies.org/gsid

// ====== extensions ====
Alias: $parent-phpid-extension = http://umcterminologies.org/StructureDefinition/parent-phpid
Alias: $pdfCharacteristics-rca-ext = http://umcterminologies.org/StructureDefinition/release-characteristics
Alias: $pdfCharacteristics-isi-ext = http://umcterminologies.org/StructureDefinition/intended-site
Alias: $pdfCharacteristics-bdf-ext = http://umcterminologies.org/StructureDefinition/basic-dose-form
Alias: $pdfCharacteristics-ame-ext = http://umcterminologies.org/StructureDefinition/administration-method
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason

// =========== Systems =======
// HL7 systems
Alias: $ingredient-role = http://hl7.org/fhir/ingredient-role

// External systems
Alias: $iso3166 = urn:iso:std:iso:3166
Alias: $unii = https://open.fda.gov/data/unii
//Alias: $edqm = http://standardterms.edqm.eu
Alias: $ucum = http://unitsofmeasure.org
Alias: $substRepresentationCS = http://hl7.org/fhir/substance-representation-format

// ============= VALUE SETS  ============

Alias: $strengthUnitCodeSystem = http://umcterminologies.org/CodeSystem/strength-unit
Alias: $jurisdictionCodeSystem = http://umcterminologies.org/CodeSystem/jurisdiction
Alias: $phpLevelCodeSystem =  http://umcterminologies.org/CodeSystem/php-level
Alias: $taskRequestCodeSystem = http://umcterminologies.org/CodeSystem/task-request-code

Alias: $edqmPdfReleaseChar = http://umcterminologies.org/ValueSet/edqm-rca 
Alias: $edqmPdfBasicDoseForm = http://umcterminologies.org/ValueSet/edqm-bdf 
Alias: $edqmPdfIntendedSite = http://umcterminologies.org/ValueSet/edqm-isi 
Alias: $edqmPdfAdministrationMethod = http://umcterminologies.org/ValueSet/edqm-ame 
Alias: $pharmaceuticalForm = http://umcterminologies.org/ValueSet/pharmaceutical-form 




// ------------------------------ TO BE REMOVED ???? ------------------------------

Alias: $channelType = http://who-umc.org/idmp/ValueSet/channelType // TODO: Only in PoC remove after split

//============== ALIAS ===============
Alias: $medicinal-product-contact-type = http://hl7.org/fhir/medicinal-product-contact-type // Används denna? Finns inte eller är struken i Excel
Alias: $languages = http://hl7.org/fhir/ValueSet/languages // Används denna? Finns inte eller är struken i Excel
Alias: $pdfCharacteristics = http://umcterminologies.org/CodeSystem/pdfCharacteristics // Används denna? Finns inte eller är struken i Excel
Alias: $drugcode = https://umcterminologies.org/whodrug/CodeSystem/drugcode // Används denna? Finns inte eller är struken i Excel


// =========== Systems =======

//Edqm for parts should be part of the standardterms code system so this is a temporary solution
Alias: $edqm = http://who-umc.org/idmp/CodeSystem/edqmDoseFormAttributes // TODO TODO: Tomt i New URL i Excel

// HL7 Systems
Alias: $administrable-dose-form = http://hl7.org/fhir/administrable-dose-form // Används denna? Finns inte eller är struken i Excel
Alias: $vsadministrable-dose-form = http://hl7.org/fhir/ValueSet/administrable-dose-form // Används denna? Finns inte eller är struken i Excel
Alias: $manufactured-dose-form = http://hl7.org/fhir/manufactured-dose-form // Används denna? Finns inte eller är struken i Excel
Alias: $unit-of-presentation = http://hl7.org/fhir/unit-of-presentation // Används denna? Finns inte eller är struken i Excel
Alias: $vsingredient-role = http://hl7.org/fhir/ValueSet/ingredient-role // Används denna? Finns inte eller är struken i Excel
Alias: $combined-dose-form = http://hl7.org/fhir/combined-dose-form // Används denna? Finns inte eller är struken i Excel
//Alias: $vscombined-dose-form = http://hl7.org/fhir/ValueSet/combined-dose-form // Används denna? Finns inte eller är struken i Excel
Alias: $legal-status-of-supply = http://hl7.org/fhir/legal-status-of-supply // Används denna? Finns inte eller är struken i Excel
Alias: $medicinal-product-package-type = http://hl7.org/fhir/medicinal-product-package-type // Används denna? Finns inte eller är struken i Excel
Alias: $package-material = http://hl7.org/fhir/package-material // Används denna? Finns inte eller är struken i Excel
Alias: $medicinal-product-name-part-type = http://hl7.org/fhir/medicinal-product-name-part-type // Används denna? Finns inte eller är struken i Excel
Alias: $medicationknowledge-characteristic = http://terminology.hl7.org/CodeSystem/medicationknowledge-characteristic // Används denna? Finns inte eller är struken i Excel
Alias: $roleclass = http://terminology.hl7.org/CodeSystem/v3-RoleClass // Används denna? Finns inte eller är struken i Excel
Alias: $data-absent-reason-CS = http://terminology.hl7.org/CodeSystem/data-absent-reason // Används denna? Finns inte eller är struken i Excel
Alias: $channelType-CS = http://terminology.hl7.org/CodeSystem/subscription-channel-type // Används denna? Finns inte eller är struken i Excel
Alias: $request-status = http://hl7.org/fhir/task-status // Används denna? Finns inte eller är struken i Excel

// External systems
Alias: $meddra = http://terminology.hl7.org/CodeSystem/mdr // Används denna? Finns inte eller är struken i Excel
Alias: $ncithesaurus =  http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl // see https://terminology.hl7.org/CodeSystem-v3-nciThesaurus.html  // Används denna? Finns inte eller är struken i Excel
Alias: $uri = urn:ietf:rfc:3986 // Används denna? Finns inte eller är struken i Excel
Alias: $oid = urn:ietf:rfc:1155 // Används denna? Finns inte eller är struken i Excel
Alias: $loinc = http://loinc.org // Används denna? Finns inte eller är struken i Excel
Alias: $sct = http://snomed.info/sct // Används denna? Finns inte eller är struken i Excel
Alias: $atc = http://www.whocc.no/atc // Används denna? Finns inte eller är struken i Excel
Alias: $ginas = http://fdasis.nlm.nih.gov  // Används denna? Finns inte eller är struken i Excel
Alias: $cas = http://terminology.hl7.org/CodeSystem/CAS
Alias: $eusrs = http://example.org/eu-srs  // Används denna? Finns inte eller är struken i Excel
Alias: $vsCountry = http://terminology.hl7.org/ValueSet/v3-Country2  // Används denna? Finns inte eller är struken i Excel
Alias: $substRepresentationVS = http://hl7.org/fhir/ValueSet/substance-representation-format // Används denna? Finns inte eller är struken i Excel
Alias: $substRepresentationCS = http://hl7.org/fhir/substance-representation-format

// Example systems
Alias: $example-cs = http://example.org // used only for missing concepts in examples // Används denna? Finns inte eller är struken i Excel
Alias: $example-man = http://example.org/marketingAuthorizationNumber  // Används denna? Finns inte eller är struken i Excel
Alias: $example-org = http://example.org/sid/org // Används denna? Finns inte eller är struken i Excel
Alias: $example-prod = http://example.org/sid/product // Används denna? Finns inte eller är struken i Excel

// ============= VALUE SETS  ============

Alias: $VS-medicinal-product-domain = http://hl7.org/fhir/ValueSet/medicinal-product-domain // Används denna? Finns inte eller är struken i Excel

Alias: $VS-language = http://hl7.org/fhir/ValueSet/languages // Används denna? Finns inte eller är struken i Excel
