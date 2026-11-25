
### Glossary
* MPD - MedicianalProductDefinition
* APD - AdministrableProductDefinition
* SD - SubstanceDefinition

### Introduction
To publish PhPIDs, GSIDs and MPDs representing records in UMC's drug dictionary, resources primarily in the FHIR v5 Medication Definition package are used. In the picture below the utilized resources are displayed with the relationship between them. It is only MPDs, APDs and SDs that are resolvable resources as FHIR end points. The other resources are virtual resources, only available as "contained" resources within the MPDs and APDs.

<img src="Published resources.png" alt="An overview of published resources"/>
<br clear="all"/>

### Contained resources of a MedicinalProductDefinition
A published MPD ([MedicinalProductDefinition (publish)](StructureDefinition-MedicinalProductDefinition-pub.html)) can contain the following resources, referenced with local references:
* [AdministrableProductDefinition (Medicinal Product Publish)](StructureDefinition-AdministrableProductDefinition-mpd-pub.html) - the administrable form of the product. It refers back to the MPD with `formOf` = `#`. Note that this is not the same profile as the PhPID APD ([AdministrableProductDefinition (PhPID publish)](StructureDefinition-AdministrableProductDefinition-phpid-pub.html)), which is a resolvable resource carrying a PhPID.
* [Ingredient (Medicinal Product Publish)](StructureDefinition-Ingredient-mpd-pub.html) - an ingredient of the product. `Ingredient.for` always references the MPD (`#`) and can also reference the contained APD (`#<id of the APD>`) to state that the ingredient is part of that administrable form.
* RegulatedAuthorization - the country-specific market authorization. `validityPeriod.end` gives the date the authorization ends (expires or is withdrawn), when known.
* Organization - the Marketing Authorization Holder, referenced from the RegulatedAuthorization.

### Retrieving resources
To retrieve bundles of all the published resources, endpoints for the respective resources are available
* GET .../MedicinalProductDefinition
* GET .../AdministrableProductDefinition
* GET .../SubstanceDefintion

### Searching for resources
To retrieve single published resources use the id to do so
* GET .../MedicinalProductDefinition/[UMC product ID]
* GET .../AdministrableProductDefinition/[PhPID]
* GET .../SubstanceDefintion/[GSID]

#### Searching for changes with `_lastUpdated`
MedicinalProductDefinition resources can be searched with the standard FHIR search parameter [`_lastUpdated`](https://hl7.org/fhir/R5/search.html#_lastUpdated), which filters on `Resource.meta.lastUpdated`. This makes it possible to retrieve only the MPDs that have been created or changed since a given point in time, for example to keep a local copy synchronized with the UMC service without re-fetching everything. Note that `_lastUpdated` is currently supported for MedicinalProductDefinition only, not for AdministrableProductDefinition or SubstanceDefinition.

The parameter supports the full filtering described for the FHIR [`date`](https://hl7.org/fhir/R5/search.html#date) search parameter type, including date and dateTime values of varying precision and the prefixes `eq`, `ne`, `gt`, `lt`, `ge`, `le`, `sa`, `eb` and `ap`. If no prefix is given, `eq` is assumed.

Examples:

```
# MPDs updated on or after 1 January 2026
GET .../MedicinalProductDefinition?_lastUpdated=ge2026-01-01

# MPDs updated after a specific point in time
GET .../MedicinalProductDefinition?_lastUpdated=gt2026-01-01T12:00:00Z

# MPDs updated within a period (repeat the parameter to combine a lower and an upper bound)
GET .../MedicinalProductDefinition?_lastUpdated=ge2026-01-01&_lastUpdated=lt2026-02-01
```

`_lastUpdated` can be combined with the other supported search parameters, for example `_count` and `_elements`, in the same request.

### Translations
Some elements in the published resources, for example EDQM terms, can be returned translated into another language. To request a translation, supply the standard HTTP header `Accept-Language` with a language code (BCP 47), for example Spanish:

```
GET .../MedicinalProductDefinition?[search parameters]
Accept-Language: es
```

The header does not affect which resources are returned; it only selects the language for the elements that are available in that language. Elements without a translation in the requested language are returned in the default language (English).

As an alternative to the header, the language can be given with the query parameter `lang`, which gives the same result:

```
GET .../MedicinalProductDefinition?[search parameters]&lang=es
```

If both are supplied, the `lang` query parameter takes precedence over the `Accept-Language` header, in the same way as the FHIR `_format` parameter takes precedence over the `Accept` header.

Note that this is different from the FHIR search parameter [`_language`](https://hl7.org/fhir/R5/search.html#_language), which filters resources on `Resource.language`.
