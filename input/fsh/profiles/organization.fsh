Profile: AuthorizedOrg
Parent: Organization
Id: AuthorizedOrg-who-php
Title: "Organization authorized to use the WHO-UMC IDMP service"
Description: "Organization making the request, not necessarily the same organization as the one sending the task"

* identifier 1..*
* contact 1..*
* insert OrganizationCommon

Profile: MarketingAuthorizationHolderWhoPhpRequest
Parent: Organization
Id: MarketingAuthorizationHolder-who-php
Title: "Marketing Authorization Holder"
Description: "Marketing Authorization Holder of medicinal product"

* identifier 0..*
* contact 0..*
* insert OrganizationCommon

//*******************************
// Common
//*******************************
RuleSet: OrganizationCommon
* name 1..1
