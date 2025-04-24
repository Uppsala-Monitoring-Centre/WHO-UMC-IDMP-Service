<blockquote class="stu-note">
<p>Except from the PhPIDs this part of the specification is only available in the PoC API</p>
</blockquote>

### Glossary
* MPD - MedicianalProductDefinition
* APD - AdministrableProductDefinition
* SD - SubstanceDefinition
* GUPRI - Globally Unique, Persistent, Resolvable Identifier

### Introduction
To publish PhPIDs, GSIDs and records in WHODrug generated as part of the PhPID request process, resources primarily in the FHIR v5 Medication Definition package are used. In the picture below the utilized resources are displayed with the relationship between them. It is only MPDs, APDs and SDs that are resolvable resources, both as FHIR end points and as GUPRIs. The other resources are virtual resources, only available as "contained" resources within the MPDs and APDs.

<img src="Publishing.png" alt="An overview of published resources"/>
<br clear="all"/>

### Retrieving resources
TBD

### Searching for resources
TBD