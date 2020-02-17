# FAIR genomes meta-data elements 
\* **NOTE Please do not put any comments in the tables here, comment on the issue number. Issues will always keep a track of this information**.

## Personal Information

| Meta-data element          | Compulsory / optional | Preferred ontology term for meta-data| Value types | Issue Number | Solved / unsolved (Usecase 1: Hinri Kersten,PMCU) |
|----------------------------|-----------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|--------------|-------------------|
| Individual ID              | compulsory            | [SDO:PatientID](https://bioportal.bioontology.org/ontologies/SDO?p=classes&conceptid=http%3A%2F%2Fmimi.case.edu%2Fontologies%2F2009%2F1%2FSDO.owl%23PatientID)     |      ID [string]       |       [#3](https://github.com/fairgenomes/information/issues/3)       |     unsolved             |
| Biological sex             | optional              | [SIO:010029](http://semanticscience.org/resource/SIO_010029.rdf)|       Male [SIO:010048](http://semanticscience.org/resource/SIO_010048)  <br> Female [SIO:010048](http://semanticscience.org/resource/SIO_010048) <br> Unknown / Undetermined []()|   [#4](https://github.com/fairgenomes/information/issues/4)           |         unsolved          |
| Country of residence       | optional              | [SNOMEDCT:276205001](http://bioportal.bioontology.org/ontologies/SNOMEDCT?p=classes&conceptid=276205001)| snomed ontological term [subclass of [SNOMEDCT:370159000](http://bioportal.bioontology.org/ontologies/SNOMEDCT?p=classes&conceptid=370159000)]  | [#5](https://github.com/fairgenomes/information/issues/5) |unsolved|
| Ethnicity                  | optional              | [LNC:MTHU010275](https://bioportal.bioontology.org/ontologies/LOINC?p=classes&conceptid=http%3A%2F%2Fpurl.bioontology.org%2Fontology%2FLNC%2FMTHU010275)|snomed ontological term [subclass of [SNOMEDCT:370159000](http://bioportal.bioontology.org/ontologies/SNOMEDCT?p=classes&conceptid=370159000)]|     [#6](https://github.com/fairgenomes/information/issues/6) |unsolved|
| Country of Birth           | optional              | [SNOMEDCT:370159000](http://bioportal.bioontology.org/ontologies/SNOMEDCT?p=classes&conceptid=370159000)|snomed ontological term [subclass of [SNOMEDCT:370159000](http://bioportal.bioontology.org/ontologies/SNOMEDCT?p=classes&conceptid=370159000)] |[#7](https://github.com/fairgenomes/information/issues/7) |unsolved|
| Year of birth (if allowed) | optional              | [NCIT:C83164](https://bioportal.bioontology.org/ontologies/NCIT/?p=classes&conceptid=http%3A%2F%2Fncicb.nci.nih.gov%2Fxml%2Fowl%2FEVS%2FThesaurus.owl%23C83164)| YYYY [4 digits] |[#8](https://github.com/fairgenomes/information/issues/8) |unsolved|
| Patient Status             | optional              | [SNOMEDCT:246097001](http://bioportal.bioontology.org/ontologies/SNOMEDCT?p=classes&conceptid=http%3A%2F%2Fpurl.bioontology.org%2Fontology%2FSNOMEDCT%2F246097001) |             |[#9](https://github.com/fairgenomes/information/issues/9) |unsolved|
| Age at death               | optional              | [GSSO:C135383](https://bioportal.bioontology.org/ontologies/GSSO/?p=classes&conceptid=http%3A%2F%2Fncicb.nci.nih.gov%2Fxml%2Fowl%2FEVS%2FThesaurus.owl%23C135383)  | 0-200 [integer] |[#10](https://github.com/fairgenomes/information/issues/10) |unsolved|
| Inclusion criterion        | optional              | [OBI:0500027](https://bioportal.bioontology.org/ontologies/OBI?p=classes&conceptid=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FOBI_0500027)| Free text [string] |[#11](https://github.com/fairgenomes/information/issues/11) |unsolved|

## Clinical Information

| Meta-data element          | Compulsory / optional | Preferred ontology term for meta-data| Value types | Issue Number | Solved / unsolved (Usecase 1: Hinri Kersten,PMCU) |
|----------------------------|-----------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|--------------|-------------------|
|Phenotypic terms | compulsory | [MESH:D010641](http://bioportal.bioontology.org/ontologies/MESH?p=classes&conceptid=http%3A%2F%2Fpurl.bioontology.org%2Fontology%2FMESH%2FD010641) |  | [#12](https://github.com/fairgenomes/information/issues/12) |unsolved|
Unobserved phenotypes | optional | [HL7:C0442737](http://purl.bioontology.org/ontology/HL7/C0442737) |  | [#13](https://github.com/fairgenomes/information/issues/13) |unsolved|
Type of phenotypic data | compulsory | [DC:DCMIType](http://bioportal.bioontology.org/ontologies/DC?p=classes&conceptid=http%3A%2F%2Fpurl.org%2Fdc%2Fterms%2FDCMIType) |  | [#14](https://github.com/fairgenomes/information/issues/14) |unsolved|
Clinical diagnosis | optional | [SNOMEDCT:39154008](http://bioportal.bioontology.org/ontologies/SNOMEDCT?p=classes&conceptid=http%3A%2F%2Fpurl.bioontology.org%2Fontology%2FSNOMEDCT%2F39154008) |  | [#15](https://github.com/fairgenomes/information/issues/15) |unsolved|
Genetic diagnosis | optional | [CRISP:1254-8491](http://bioportal.bioontology.org/ontologies/CRISP?p=classes&conceptid=http%3A%2F%2Fpurl.bioontology.org%2Fontology%2FCSP%2F1254-8491) |  | [#16](https://github.com/fairgenomes/information/issues/16) |unsolved|
Age at diagnosis | optional | [SNOMEDCT:423493009](http://bioportal.bioontology.org/ontologies/SNOMEDCT/?p=classes&conceptid=http%3A%2F%2Fpurl.bioontology.org%2Fontology%2FSNOMEDCT%2F423493009) |  | [#17](https://github.com/fairgenomes/information/issues/17) |unsolved|
Age at last screening (if part of a cohort) | optional | [NCIT:C81258](http://bioportal.bioontology.org/ontologies/NCIT?p=classes&conceptid=http%3A%2F%2Fncicb.nci.nih.gov%2Fxml%2Fowl%2FEVS%2FThesaurus.owl%23C81258) |  | [#18](https://github.com/fairgenomes/information/issues/18) |unsolved|
Medication information | optional | [EDAM:data_3103](http://bioportal.bioontology.org/ontologies/EDAM?p=classes&conceptid=http%3A%2F%2Fedamontology.org%2Fdata_3103) |  | [#19](https://github.com/fairgenomes/information/issues/19) |unsolved|
Dosage | optional | |  | [#20](https://github.com/fairgenomes/information/issues/20) |unsolved|
Family members affected | compulsory | []() |  | [#21](https://github.com/fairgenomes/information/issues/21) |unsolved|
Family members sequenced | optional | []() |  | [#22](https://github.com/fairgenomes/information/issues/22) |unsolved|
Procedural history | optional | UMLS: C1138431 (Current procedural history) |  | [#23](https://github.com/fairgenomes/information/issues/23) |unsolved|
Age of onset | optional | [HP:0003674](http://bioportal.bioontology.org/ontologies/HP/?p=classes&conceptid=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FHP_0003674) |  | [#24](https://github.com/fairgenomes/information/issues/24) |unsolved|

## Materials Information

| Meta\-data element                       | Compulsory / optional | Preferred ontology term for meta\-data | Value types | Issue Number | Solved / unsolved |
|------------------------------------------|-----------------------|----------------------------------------|-------------|--------------|-------------------|
| Sampling TimeStamp                       | compulsory            |                                        |             |              |                   |
| Registration TimesStamp                  | compulsory            |                                        |             |              |                   |
| Sampling collection protocol             | optional              |                                        |             |              |                   |
| Deviations from Sample protocol          | optional              |                                        |             |              |                   |
| Reasons for protocol deviation           | optional              |                                        |             |              |                   |
| Material type                            | compulsory            |                                        |             |              |                   |
| Anatomical source                        | optional              |                                        |             |              |                   |
| Storage conditions                       | optional              |                                        |             |              |                   |
| Expiration date                          | optional              |                                        |             |              |                   |
| Estimated percentage of tumor cells      | optional              |                                        |             |              |                   |
| Amount of input material used            | optional              |                                        |             |              |                   |
| Location of sample \(Physical location\) | optional              |                                        |             |              |                   |
| "is deritative or not"?                  | optional              |                                        |             |              |                   |

## Technical Information

| Meta-data element | Compulsory / optional | Preferred ontology term for meta-data | Value types | Issue Number | Solved / unsolved |
|-------------------|-----------------------|---------------------------------------|-------------|--------------|-------------------|
|                   |                       |                                       |             |              |                   |
|                   |                       |                                       |             |              |                   |
|                   |                       |                                       |             |              |                   |
