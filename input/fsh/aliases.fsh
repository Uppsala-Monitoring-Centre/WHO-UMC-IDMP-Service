//============== ALIAS ===============
Alias: $medicinal-product-type = http://hl7.org/fhir/medicinal-product-type
Alias: $medicinal-product-domain = http://hl7.org/fhir/medicinal-product-domain
Alias: $publication-status = http://hl7.org/fhir/publication-status
Alias: $medicinal-product-contact-type = http://hl7.org/fhir/medicinal-product-contact-type
Alias: $languages = http://hl7.org/fhir/ValueSet/languages
Alias: $ingredient-role = http://hl7.org/fhir/ingredient-role
Alias: $gsid = http://www.who-umc.org/idmp/gsid
Alias: $phpid = https://www.who-umc.org/idmp/phpid
// Alias: $php-level = http://www.who-umc.org/idmp/CodeSystem/php-level
Alias: $pdfCharacteristrics = http://www.who-umc.org/idmp/CodeSystem/pdfCharacteristics
// ====== extensions ====
Alias: $parent-php-extension = http://www.who-umc.org/idmp/StructureDefinition/parent-phpid

Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
// =========== Systems =======
// HL7 systems
Alias: $administrable-dose-form = http://hl7.org/fhir/administrable-dose-form
Alias: $manufactured-dose-form = http://hl7.org/fhir/manufactured-dose-form
Alias: $unit-of-presentation = http://hl7.org/fhir/unit-of-presentation
Alias: $ingredient-role = http://hl7.org/fhir/ingredient-role
Alias: $combined-dose-form = http://hl7.org/fhir/combined-dose-form
Alias: $medicinal-product-type = http://hl7.org/fhir/medicinal-product-type
Alias: $medicinal-product-domain = http://hl7.org/fhir/medicinal-product-domain
Alias: $legal-status-of-supply = http://hl7.org/fhir/legal-status-of-supply
Alias: $medicinal-product-package-type = http://hl7.org/fhir/medicinal-product-package-type
Alias: $package-material = http://hl7.org/fhir/package-material
Alias: $medicinal-product-name-part-type = http://hl7.org/fhir/medicinal-product-name-part-type
Alias: $medicationknowledge-characteristic = 
http://terminology.hl7.org/CodeSystem/medicationknowledge-characteristic
Alias: $roleclass = http://terminology.hl7.org/CodeSystem/v3-RoleClass
Alias: $publication-status = http://hl7.org/fhir/publication-status
Alias: $data-absent-reason-CS = http://terminology.hl7.org/CodeSystem/data-absent-reason

// External systems
Alias: $standardterms = https://standardterms.edqm.eu
Alias: $meddra = http://terminology.hl7.org/CodeSystem/mdr
Alias: $iso3166 = urn:iso:std:iso:3166
Alias: $ncithesaurus =  http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl // see https://terminology.hl7.org/CodeSystem-v3-nciThesaurus.html
Alias: $uri = urn:ietf:rfc:3986
Alias: $oid = urn:ietf:rfc:1155
Alias: $loinc = http://loinc.org
Alias: $unii = https://open.fda.gov/data/unii // To be checked
Alias: $edqm = http://standardterms.edqm.eu
Alias: $sct = http://snomed.info/sct
Alias: $atc = http://www.whocc.no/atc
Alias: $ginas = http://fdasis.nlm.nih.gov
Alias: $eusrs = http://example.org/eu-srs // TO BE CHANGED
Alias: $cas = http://example.org/cas // TO BE CHANGED
Alias: $ucum = http://unitsofmeasure.org


// Example systems
Alias: $example-cs = http://example.org // used only for missing concepts in examples
Alias: $example-man = http://example.org/marketingAuthorizationNumber 
Alias: $example-org = http://example.org/sid/org
Alias: $example-prod = http://example.org/sid/product

// ============= VALUE SETS  ============

Alias: $VS-medicinal-product-domain =
	http://hl7.org/fhir/ValueSet/medicinal-product-domain

Alias: $VS-language = http://hl7.org/fhir/ValueSet/languages


Alias: $edqmPdfReleaseChar = http://www.who-umc.org/idmp/ValueSet/edqm-RCA
Alias: $edqmPdfBasicDoseForm = http://www.who-umc.org/idmp/ValueSet/edqm-BDF
Alias: $edqmPdfIntendedSite = http://www.who-umc.org/idmp/ValueSet/edqm-ISI
Alias: $edqmPdfAdministrationMethod = http://www.who-umc.org/idmp/ValueSet/edqm-AME

// SPOR Code systems (lists)
	
//Alias: $spor-precautionsForStorage-cs  = https://spor.ema.europa.eu/lists/100000073344
//Alias: $spor-medicinalProducttype-cs  = https://spor.ema.europa.eu/lists/200000025915
//Alias: $example-organisationRoleType-cs = https://spor.ema.europa.eu/lists/220000000031
//Alias: $spor-combinedPharmaceuticalDoseForm-cs = https://spor.ema.europa.eu/lists/200000000006 
// Alias: $spor-route-cs = https://spor.ema.europa.eu/lists/100000073345 // Routes and Methods of Administration
//Alias: $spor-legalStatusForSupply-cs = https://spor.ema.europa.eu/lists/100000072051	// Legal Status for the Supply
//Alias: $spor-additionalMonitoringIndicator-cs = http://example.org // TO BE FIXED
//Alias: $spor-marketingStatus-cs = https://spor.ema.europa.eu/lists/100000072052
//Alias: $example-productNamePartType-cs = https://spor.ema.europa.eu/lists/220000000000 // Medicinal Product Name Part Type
//Alias: $spor-regulatoryEntitlementType-cs = https://spor.ema.europa.eu/lists/220000000060
// Alias: $spor-regulatoryEntitlementStatus-cs = https://spor.ema.europa.eu/lists/100000072049