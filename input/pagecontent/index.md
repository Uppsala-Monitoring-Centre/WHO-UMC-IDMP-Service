
  <blockquote class="stu-note">
    <p>The specification herewith documented is for the time being a proof of concept specification, and may not be used for any implementation purposes. 
    No liability can be inferred from the use or misuse of this specification, or its consequences.</p>
  </blockquote>


### Scope

Document the WHO-UMC IDMP FHIR service.

### Introduction

This implementation guide describes how the global PhPIDs and GSIDs are delivered through FHIR and how new global PhPIDs and GSIDs can be requested using asynchronous FHIR requests.

The main resources maintained by the service are the PhPIDs (manifested through the AdministrableProductDefinition resource) and the GSIDs (manifested through the SubstanceDefinition resource). However, the MedicinalProductDefinition resource is also vital since it serves as input for PhPID generation. It is also used in searches to link PhPIDs to MPIDs in different jurisdictions and also to represent those MPIDs. 

<img src="Overview.png" alt="An overview of PhPID and GSID"/>
<br clear="all"/>

#### Access to the WHO-UMC IDMP FHIR server
The (preview) FHIR server with tutorials and examples can be reached at <a href="https://umc-ext-dev-phponfhirdemo-preview-rg01-webapp.azurewebsites.net/">https://umc-ext-dev-phponfhirdemo-preview-rg01-webapp.azurewebsites.net/</a>. 

### Dependencies

{% include dependency-table.xhtml %}


### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Global Profiles

{% include globals-table.xhtml %}

### IP statements

{% include ip-statements.xhtml %}


### Authors and Contributors

<table>
<thead>
<tr class="header">
<th>Roles</th>
<th>Name</th>
<th>Organization</th>
<th>Contact</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Author</td>
<td>Magnus Wallberg</td>
<td>Uppsala Monitoring Centre</td>
<td>magnus.wallberg@who-umc.org</td>
</tr><tr class="even">
<td>Author</td>
<td>Giorgio Cangioli</td>
<td></td>
<td>giorgio.cangioli@gmail.com</td>
</tr><tr class="odd">
<td>Author</td>
<td>Åsa Pärnaste</td>
<td>Uppsala Monitoring Centre</td>
<td>asa.parnaste@who-umc.org</td>
</tr><tr class="even">
<td>Author</td>
<td>João Almeida</td>
<td></td>
<td>joaofilipe90@gmail.com</td>
</tr></tbody>
</table>
