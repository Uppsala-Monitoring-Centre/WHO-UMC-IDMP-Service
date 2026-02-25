//*******************************
// Ingredient PhPID Common
//*******************************
RuleSet: IngredientPhPIdCommon

* id 1..

* for 1..

* role from $vsingredient-role (example)

* insert NotUsed(substance.strength.textConcentration)
* insert NotUsed(allergenicIndicator)
* insert NotUsed(manufacturer)

//*******************************
// Constraints
//*******************************
Invariant:  presentation-required
Description: "Either presentationRatio or presentationQuantity or textPresentation MUST be populated"
Expression: "substance.strength.presentation.ofType(Ratio).exists() or substance.strength.presentation.ofType(Quantity).exists() or substance.strength.textPresentation.exists()"
Severity:   #error