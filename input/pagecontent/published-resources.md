
### Glossary
* MPD - MedicianalProductDefinition
* APD - AdministrableProductDefinition
* SD - SubstanceDefinition

### Introduction
To publish PhPIDs, GSIDs and MPDs representing records in UMC's drug dictionary, resources primarily in the FHIR v5 Medication Definition package are used. In the picture below the utilized resources are displayed with the relationship between them. It is only MPDs, APDs and SDs that are resolvable resources as FHIR end points. The other resources are virtual resources, only available as "contained" resources within the MPDs and APDs.

<img src="Published resources.png" alt="An overview of published resources"/>
<br clear="all"/>

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
