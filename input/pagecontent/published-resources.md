
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