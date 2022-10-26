Logical:         SHCCoreDataSet
Title:           "SHC Core Data Set Logical Model"
Description:     "Data elements for the Smart Health Cards Core Data Set."

* ^url = "http://worldhealthorganization.github.io/ddcc/StructureDefinition/SHCCoreDataSet"
* ^version = "1"
* ^abstract = true
* ^status = #draft

* iss 0..1 string "Issuer"
* sub 0..1 string "Subject"
* aud 0..1 string "Audience"
* exp 0..1 dateTime "Expiration Date"
* nbf 0..1 dateTime "Not before Date"
* iat 0..1 dateTime "Issued at Date"
* jti 0..1 string "Credential's Unique Identifier"
* vc 0..1 BackboneElement "VC - verifiable credential"
  * type 0..* string "Credential Type"
  * credentialSubject 0..1 BackboneElement "Credential Subject"
    * fhirVersion 0..1 string "Fhir Version"
    * fhirBundle 0..1 Bundle "Fhir Bundle with the signed objects"