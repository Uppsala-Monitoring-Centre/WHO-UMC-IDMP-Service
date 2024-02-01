/* Instance: 3aae4a7e-b252-44a0-8e5c-813461e3e29e
InstanceOf: IngredientWhoPhP
Usage: #inline
* status = #active
* for.reference = "#"
* role = $ingredient-role#100000072072
* role.text = "Active"
* substance.code.concept = $gsid#GSID77CC76XH15
* substance.code.concept.text = "Carbamazepine"
* substance.strength.presentationQuantity = 300 'mg' "mg"
* substance.strength.textPresentation = "300 mg"

Instance: 4444
InstanceOf: MedicinalProductDefinitionWhoPhPRequest
Usage: #example

* identifier.system = "http://hl7.org/fhir/sid/ndc"
* identifier.value = "4444"
* type = $medicinal-product-type#MedicinalProduct
* contained = 3aae4a7e-b252-44a0-8e5c-813461e3e29e
* domain = $medicinal-product-domain#Human
* domain.text = "Human use"
* status = $publication-status#active
* status.text = "Active"
* contact.type = $medicinal-product-contact-type#ProposedMAH
* contact.contact.reference = "Organization/torrentpharmaceuticalsltd"
* contact.contact.display = "TORRENT PHARMACEUTICALS LTD"
* name.productName = "CARBAMAZEPINE"
* name.usage.country = urn:iso:std:iso:3166#USA
* name.usage.jurisdiction = urn:iso:std:iso:3166#USA
* name.usage.language =  urn:ietf:bcp:47#en-US

Instance: 44441
InstanceOf: MedicinalProductDefinitionWhoPhP
Usage: #example

* identifier.system = "http://hl7.org/fhir/sid/ndc"
* identifier.value = "44441"
* type = $medicinal-product-type#MedicinalProduct
* domain = $medicinal-product-domain#Human
* domain.text = "Human use"
* status = $publication-status#active
* status.text = "Active"
* contact.type = $medicinal-product-contact-type#ProposedMAH
* contact.contact.reference = "Organization/torrentpharmaceuticalsltd"
* contact.contact.display = "TORRENT PHARMACEUTICALS LTD"
* name.productName = "CARBAMAZEPINE"
* name.usage.country = urn:iso:std:iso:3166#USA
* name.usage.jurisdiction = urn:iso:std:iso:3166#USA
* name.usage.language =  urn:ietf:bcp:47#en-US */
