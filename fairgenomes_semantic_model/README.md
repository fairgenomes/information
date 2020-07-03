
![FAIRgenomic workflow](https://github.com/fairgenomes/information/blob/master/fairgenomes_semantic_model/FAIRificationOfNGS.png)
<!-- ![FAIRgenomic workflow](https://github.com/fairgenomes/information/blob/master/fairgenomes_semantic_model/Genomic%20workflow.png) -->

<br/>
<br/>
<br/>

# FAIR genomes meta-data elements glossary


\* **NOTE Please do not put any comments in the tables here, comment on the issue number. Issues will always keep a track of this information**.

## Personal information
| Meta-data element          | Preferred ontology term for meta-data| Value types | Issue Number | Issue (open / closed) |
|----------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|--------------|-------------------|
| Individual ID              | [NCIT:C164337](https://bioportal.bioontology.org/ontologies/NCIT?p=classes&conceptid=http%3A%2F%2Fncicb.nci.nih.gov%2Fxml%2Fowl%2FEVS%2FThesaurus.owl%23C164337)     |      ID [string]       |       [#3](https://github.com/fairgenomes/information/issues/3)       |     closed             |
| Gender            | [SIO:010029](http://semanticscience.org/resource/SIO_010029.rdf)|       Male [SIO:010048](http://semanticscience.org/resource/SIO_010048)  <br> Female [SIO:010052](http://semanticscience.org/resource/SIO_010052) <br> Unknown / Undetermined []()|   [#4](https://github.com/fairgenomes/information/issues/4)           |         closed         |
| Genotypic sex | [PATO:0020000](http://purl.obolibrary.org/obo/PATO_0020000) | UNKNOWN_KARYOTYPE, XX, XY, XO, XXY, XXX, XXYY, XXXY, XXXX, XYY, OTHER_KARYOTYPE |   [#69](https://github.com/fairgenomes/information/issues/69)           | closed |
| Country of residence       | [SNOMEDCT:276205001](http://bioportal.bioontology.org/ontologies/SNOMEDCT?p=classes&conceptid=276205001)| [ISO 3166 country codes](https://www.iso.org/iso-3166-country-codes.html)  | [#5](https://github.com/fairgenomes/information/issues/5) | closed |
| Ethnicity                  | [LNC:MTHU010275](https://bioportal.bioontology.org/ontologies/LOINC?p=classes&conceptid=http%3A%2F%2Fpurl.bioontology.org%2Fontology%2FLNC%2FMTHU010275)| [ISO 3166 country codes](https://www.iso.org/iso-3166-country-codes.html) |     [#6](https://github.com/fairgenomes/information/issues/6) | closed |
| Country of Birth           | [SNOMEDCT:370159000](http://bioportal.bioontology.org/ontologies/SNOMEDCT?p=classes&conceptid=370159000)|snomed ontological term [subclass of [SNOMEDCT:370159000](http://bioportal.bioontology.org/ontologies/SNOMEDCT?p=classes&conceptid=370159000)] |[#7](https://github.com/fairgenomes/information/issues/7) | closed |
| Year of birth (if allowed) | [NCIT:C83164](https://bioportal.bioontology.org/ontologies/NCIT/?p=classes&conceptid=http%3A%2F%2Fncicb.nci.nih.gov%2Fxml%2Fowl%2FEVS%2FThesaurus.owl%23C83164)| YYYY [4 digits] |[#8](https://github.com/fairgenomes/information/issues/8) | closed |
| Inclusion status | [SNOMEDCT:246097001](http://bioportal.bioontology.org/ontologies/SNOMEDCT?p=classes&conceptid=http%3A%2F%2Fpurl.bioontology.org%2Fontology%2FSNOMEDCT%2F246097001) |   Alive / Dead / Lost in follow-up / Opted-out |[#9](https://github.com/fairgenomes/information/issues/9) |open|
| Age at death               |  [NCIT:C135383](https://bioportal.bioontology.org/ontologies/NCIT?p=classes&conceptid=http%3A%2F%2Fncicb.nci.nih.gov%2Fxml%2Fowl%2FEVS%2FThesaurus.owl%23C135383) | [Positive integer] |[#10](https://github.com/fairgenomes/information/issues/10) | closed |
| Inclusion criterion        | [OBI:0500027](https://bioportal.bioontology.org/ontologies/OBI?p=classes&conceptid=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FOBI_0500027)| Free text [string] |[#11](https://github.com/fairgenomes/information/issues/11) | closed |
| Primary affiliated institute        | [SIO:000688](http://semanticscience.org/resource/SIO_000688) | List of Dutch institutes in BBMRI-ERIC | [#60](https://github.com/fairgenomes/information/issues/60) |open|
| Data available in other institutes        | [SIO:000688](http://semanticscience.org/resource/SIO_000688)  |List of Dutch institutes in BBMRI-ERIC | [#62](https://github.com/fairgenomes/information/issues/62) |open|



## Study information
| Meta-data element          | Preferred ontology term for meta-data| Value types | Issue Number | Issue (open / closed) |
|----------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|--------------|-------------------|
| ID              | MIABIS-2.0-01     |      ID [string]       |       [#79](https://github.com/fairgenomes/information/issues/79)    |     closed             |
| Name              | MIABIS-2.0-02     |     String      |     [#80](https://github.com/fairgenomes/information/issues/80)      |     closed             |
| Description              | MIABIS-2.0-08     |      String       |    [#81](https://github.com/fairgenomes/information/issues/81)       |     closed             |
| Principal Investigator              | MIABIS-2.0-18    |      String      |      [#82](https://github.com/fairgenomes/information/issues/82)     |     closed             |
| Contact information             | MIABIS-2.0-07     |      String       |      [#83](https://github.com/fairgenomes/information/issues/83)     |     closed             |
| Study design             | MIABIS-2.0-19     |     String       |   [#84](https://github.com/fairgenomes/information/issues/84)       |     closed             |

## General consent information
| Meta-data element          | Preferred ontology term for meta-data| Value types | Issue Number | Issue (open / closed) |
|----------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|--------------|-------------------|
| Information on leaflet: Title | [DC:title](http://purl.org/dc/terms/title) | Free text [string] | [#92](https://github.com/fairgenomes/information/issues/92) | open |
| Information on leaflet: Identifier | [DC:identifier](http://purl.org/dc/terms/identifier) | URL [Preferred to be a DOI for the document in a repository (e.g. when uploaded to Zenodo)] | [#93](https://github.com/fairgenomes/information/issues/93) | open |
| Information on leaflet: Date | [DC:date](http://purl.org/dc/terms/date) | YYYY-MM-DD HH-MM-SS | [#94](https://github.com/fairgenomes/information/issues/94) | open |
| Information on leaflet: Version | [DC:hasVersion](http://purl.org/dc/terms/hasVersion) | Free text [string] | [#95](https://github.com/fairgenomes/information/issues/95) | open |
| validation date | [DC:valid](http://purl.org/dc/terms/valid) | YYYY-MM-DD HH-MM-SS | [#96](https://github.com/fairgenomes/information/issues/96)  | open |
| Data of accepted | [DC:dateAccepted](http://purl.org/dc/terms/dateAccepted) | YYYY-MM-DD HH-MM-SS | [#97](https://github.com/fairgenomes/information/issues/97)  | open |
| Organisation creating the consent | [OBI:0000245](http://purl.obolibrary.org/obo/OBI_0000245) | OrganisationID or name ? | [#98](https://github.com/fairgenomes/information/issues/98)  | open |
| General consent form version | [DC:hasVersion](http://purl.org/dc/terms/hasVersion) | Free text [string] | [#99](https://github.com/fairgenomes/information/issues/99) | open |


## Individual consent information
| Meta-data element          | Preferred ontology term for meta-data| Value types | Issue Number | Issue (open / closed) |
|----------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|--------------|-------------------|
| is about subject | [IAO:0000136](http://purl.obolibrary.org/obo/IAO_0000136) |  PATIENT([ICO:0000321](http://purl.obolibrary.org/obo/ico.owl/ICO_0000321)) <br> human subject unable to give informed consent([ICO:0000062](http://purl.obolibrary.org/obo/ICO_0000062)) <br> is represented by ([sio:000205](http://semanticscience.org/resource/SIO_000205))|       [#85](https://github.com/fairgenomes/information/issues/85)  | open |
| collected by | [NCIT:C45262](http://purl.obolibrary.org/obo/NCIT_C45262)  | employee ID who collected the IC form | [#86](https://github.com/fairgenomes/information/issues/86)    | open |
| informed consent form signing date | [ICO:0000036](http://purl.obolibrary.org/obo/ICO_0000036) | YYYY-MM-DD HH-MM-SS | [#87](https://github.com/fairgenomes/information/issues/87) | open |
| Informed consent version | [DC:hasVersion](http://purl.org/dc/terms/hasVersion) | Free text [string] | [#88](https://github.com/fairgenomes/information/issues/88) | open |
| valid | [DC:valid](http://purl.org/dc/terms/valid) | YYYY-MM-DD / YYYY-MM-DD | [#89](https://github.com/fairgenomes/information/issues/89)  | open |
| is restricted to | [DUO:0000010](http://purl.obolibrary.org/obo/DUO_0000010) | subclass of [DUO:0000042](http://purl.obolibrary.org/obo/DUO_0000042) |       [#90](https://github.com/fairgenomes/information/issues/90) | open |
|is represented by | [sio:000205](http://semanticscience.org/resource/SIO_000205)  | person (name or id) | [#91](https://github.com/fairgenomes/information/issues/91)    | open |


## Clinical information
| Meta-data element          | Preferred ontology term for meta-data| Value types | Issue Number | Issue (open / closed) |
|----------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|--------------|-------------------|
|Phenotypic terms | [MESH:D010641](http://bioportal.bioontology.org/ontologies/MESH?p=classes&conceptid=http%3A%2F%2Fpurl.bioontology.org%2Fontology%2FMESH%2FD010641) | Ontological terms based on [HPO](http://bioportal.bioontology.org/ontologies/HP) / [ORDO](http://bioportal.bioontology.org/ontologies/ORDO) | [#12](https://github.com/fairgenomes/information/issues/12) |open|
Unobserved phenotypes | [HL7:C0442737](http://purl.bioontology.org/ontology/HL7/C0442737) | Ontological terms based on [HPO](http://bioportal.bioontology.org/ontologies/HP) / [ORDO](http://bioportal.bioontology.org/ontologies/ORDO) | [#13](https://github.com/fairgenomes/information/issues/13) |open|
Type of phenotypic data | [DC:DCMIType](http://bioportal.bioontology.org/ontologies/DC?p=classes&conceptid=http%3A%2F%2Fpurl.org%2Fdc%2Fterms%2FDCMIType) | Ontological terms subclass of <[DC:DCMIType](http://bioportal.bioontology.org/ontologies/DC?p=classes&conceptid=http://purl.org/dc/terms/DCMIType)> | [#14](https://github.com/fairgenomes/information/issues/14) |closed|
Clinical diagnosis | [SNOMEDCT:39154008](http://bioportal.bioontology.org/ontologies/SNOMEDCT?p=classes&conceptid=http%3A%2F%2Fpurl.bioontology.org%2Fontology%2FSNOMEDCT%2F39154008) | Ontological terms based on [ORDO](http://bioportal.bioontology.org/ontologies/ORDO) / [ICD10](http://bioportal.bioontology.org/ontologies/ICD10) / [SNOMED](http://bioportal.bioontology.org/ontologies/SNOMEDCT) | [#15](https://github.com/fairgenomes/information/issues/15) | open |
Molecular diagnosis | [NCIT:C20826](http://purl.obolibrary.org/obo/NCIT_C20826) | Identifiers based on [OMIM gene](https://www.omim.org/), [HGNC gene](https://www.genenames.org/) [#16](https://github.com/fairgenomes/information/issues/16) | open |
Molecular diagnosis (free text) | [NCIT:C20826](http://purl.obolibrary.org/obo/NCIT_C20826) | variant in [HGVS](https://varnomen.hgvs.org/) + FREE TEXT | [#16](https://github.com/fairgenomes/information/issues/16) | open |
Age at diagnosis | [SNOMEDCT:423493009](http://bioportal.bioontology.org/ontologies/SNOMEDCT/?p=classes&conceptid=http%3A%2F%2Fpurl.bioontology.org%2Fontology%2FSNOMEDCT%2F423493009) | [positive integer] | [#17](https://github.com/fairgenomes/information/issues/17) | closed |
Age at last screening (if part of a cohort) | [NCIT:C81258](http://bioportal.bioontology.org/ontologies/NCIT?p=classes&conceptid=http%3A%2F%2Fncicb.nci.nih.gov%2Fxml%2Fowl%2FEVS%2FThesaurus.owl%23C81258) | [positive integer] | [#18](https://github.com/fairgenomes/information/issues/18) | closed |
Medication information | [EDAM:data_3103](http://bioportal.bioontology.org/ontologies/EDAM?p=classes&conceptid=http%3A%2F%2Fedamontology.org%2Fdata_3103) | Ontological terms based of [ATC codes](http://bioportal.bioontology.org/ontologies/ATC) | [#19](https://github.com/fairgenomes/information/issues/19) | closed |
Dosage | [SNOMEDCT:260911001](https://bioportal.bioontology.org/ontologies/SNOMEDCT?p=classes&conceptid=http%3A%2F%2Fpurl.bioontology.org%2Fontology%2FSNOMEDCT%2F260911001#mappings) | Free text [string] | [#20](https://github.com/fairgenomes/information/issues/20) |open|
Family members affected | []() |Free text [string]  | [#21](https://github.com/fairgenomes/information/issues/21) | open |
Family members sequenced | []() |Free text [string]  | [#22](https://github.com/fairgenomes/information/issues/22) |closed|
Consanguinity information | | Free text [string] | [#70](https://github.com/fairgenomes/information/issues/70) | closed |
Procedural history | UMLS: C1138431 (Current procedural history) | Ontological terms based on [CPT](http://bioportal.bioontology.org/ontologies/CPT) | [#23](https://github.com/fairgenomes/information/issues/23) | closed |
Age of onset | [HP:0003674](http://bioportal.bioontology.org/ontologies/HP/?p=classes&conceptid=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FHP_0003674) | [positive integer] | [#24](https://github.com/fairgenomes/information/issues/24) | closed |
First contact with specialised center | [LOINC:MTHU048806](https://bioportal.bioontology.org/ontologies/LOINC?p=classes&conceptid=http%3A%2F%2Fpurl.bioontology.org%2Fontology%2FLNC%2FMTHU048806) | YYYY-MM-DD | [#61](https://github.com/fairgenomes/information/issues/61) | open |



## Materials information
| Meta-data element                       | Preferred ontology term for meta\-data | Value types | Issue Number | Issue (open / closed) |
|------------------------------------------|----------------------------------------|-------------|--------------|-------------------|
| Sampling time stamp                       | [EFO:0000689](http://www.ebi.ac.uk/efo/EFO_0000689) | YYYY-MM-DD HH-MM-SS | [#25](https://github.com/fairgenomes/information/issues/25) |closed|
| Registration time stamp                  | [CTO:Registration](http://bioportal.bioontology.org/ontologies/CTO?p=classes&conceptid=http%3A%2F%2Fwww.co-ode.org%2Fontologies%2Font.owl%23Registration)                       | YYYY-MM-DD HH-MM-SS | [#26](https://github.com/fairgenomes/information/issues/26) |closed|        
| Sampling collection protocol             | [EFO:0005518](http://bioportal.bioontology.org/ontologies/EFO?p=classes&conceptid=http%3A%2F%2Fwww.ebi.ac.uk%2Fefo%2FEFO_0005518)                            | Free text [String] | [#27](https://github.com/fairgenomes/information/issues/27) |closed|        
| Deviations from sample protocol          | [NCIT:C50996](http://bioportal.bioontology.org/ontologies/NCIT?p=classes&conceptid=http%3A%2F%2Fncicb.nci.nih.gov%2Fxml%2Fowl%2FEVS%2FThesaurus.owl%23C50996) | Free text [string] | [#28](https://github.com/fairgenomes/information/issues/28) |closed|        
| Reasons for protocol deviation           |                                        | Free text [string] | [#29](https://github.com/fairgenomes/information/issues/29) |closed|
| Material type                            | UMLS:C2986062 | Terms used in [MIABIS-2.0-14](https://github.com/MIABIS/miabis/wiki/Structured-data-and-lists#material-type) | [#31](https://github.com/fairgenomes/information/issues/31) | open |
| Anatomical source                        | [UBERON:0001062](http://bioportal.bioontology.org/ontologies/UBERON?p=classes&conceptid=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FUBERON_0001062)                         | Ontological terms based on [UBERON](https://bioportal.bioontology.org/ontologies/UBERON) code | [#32](https://github.com/fairgenomes/information/issues/32) | open |
| Storage conditions                       | UMLS:C3272596                          | Ontological terms based on [OBIB](https://bioportal.bioontology.org/ontologies/OBIB) ontology | [#33](https://github.com/fairgenomes/information/issues/33) | open |
| Expiration date                          | [LNC:LP173684-4](http://bioportal.bioontology.org/ontologies/LOINC?p=classes&conceptid=http%3A%2F%2Fpurl.bioontology.org%2Fontology%2FLNC%2FLP173684-4)                         | YYYY-MM-DD | [#34](https://github.com/fairgenomes/information/issues/34) | closed |
| Estimated percentage of tumor cells      | [NCIT:C127771](http://bioportal.bioontology.org/ontologies/NCIT?p=classes&conceptid=http%3A%2F%2Fncicb.nci.nih.gov%2Fxml%2Fowl%2FEVS%2FThesaurus.owl%23C127771)                                        | 0-100[decimals] | [#35](https://github.com/fairgenomes/information/issues/35) | closed |
| Physical location | [DUO:GAZ\_00000448](http://bioportal.bioontology.org/ontologies/DUO?p=classes&conceptid=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FGAZ_00000448)                      |             | [#37](https://github.com/fairgenomes/information/issues/37) | open |
| Derived from                  | [NCIT:C28355](http://bioportal.bioontology.org/ontologies/NCIT?p=classes&conceptid=http%3A%2F%2Fncicb.nci.nih.gov%2Fxml%2Fowl%2FEVS%2FThesaurus.owl%23C28355)                            | [link to Material] | [#38](https://github.com/fairgenomes/information/issues/38) |closed|

## Sample preparation information
| Meta-data element                                            | Preferred ontology term for meta\\\-data                                                                    | Value types                                                                                                   | Issue Number | Issue (open / closed) |
|-----------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|--------------|---------------------------------------------------------|
| Amount of input material in ng            | [AFRL_0000010](http://bioportal.bioontology.org/ontologies/AFO?p=classes&conceptid=http%3A%2F%2Fpurl.allotrope.org%2Fontologies%2Frole%23AFRL_0000010) | [positive integer] | [#36](https://github.com/fairgenomes/information/issues/36) | closed |
| Library preparation kit                                                 | [GENEPIO:0000081](http://purl.obolibrary.org/obo/GENEPIO_0000081)                                                                                          | Codebook based on biocompare.com NGS kit listing  | [#40](https://github.com/fairgenomes/information/issues/40) | closed |
| PCR-free                                              | [NCIT:C17003](http://purl.obolibrary.org/obo/NCIT_C17003)                                                                                                 | [boolean]| [#43](https://github.com/fairgenomes/information/issues/43) | closed |
| Target enrichment kit                                           | [NCIT:C154307](http://purl.obolibrary.org/obo/NCIT_C154307)                                                                                                | Codebook based on biocompare.com NGS kit listing | [#45](https://github.com/fairgenomes/information/issues/45) | closed |
| UMIs present                                             | [EFO:0010199](http://www.ebi.ac.uk/efo/EFO_0010199)                                                                                    | [boolean]| [#46](https://github.com/fairgenomes/information/issues/46) | closed |
| Intended insert size                                                     | NA                                                                                                          | [positive integer] | [#64](https://github.com/fairgenomes/information/issues/64) |closed|
| Intended read length                                                     | [NCIT:C153362](http://purl.obolibrary.org/obo/NCIT_C153362)                                                                                                | [positive integer] | [#63](https://github.com/fairgenomes/information/issues/63) |closed|


## Sequencing information
| Meta-data element                                            | Preferred ontology term for meta\\\-data                                                                    | Value types                                                                                                   | Issue Number | Issue (open / closed) |
|-----------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|--------------|---------------------------------------------------------|
| Sequencing date                                                 | [GENEPIO:0000069](http://purl.obolibrary.org/obo/GENEPIO_0000069)                                                                                             | YYYY-MM-DD | [#39](https://github.com/fairgenomes/information/issues/39) | closed |
| Sequencing platform                                             | [GENEPIO:0000071](http://purl.obolibrary.org/obo/GENEPIO_0000071)                                                                                          | Free text with brands that are subclasses of GENEPIO\\\_0000071 | [#41](https://github.com/fairgenomes/information/issues/41) | closed |
| Sequencing instrument model                                             | [GENEPIO:0001921](http://purl.obolibrary.org/obo/GENEPIO_0001921)                                                                                          | Subclasses of [GENEPIO_0001921](https://bioportal.bioontology.org/ontologies/GENEPIO?p=classes&conceptid=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FGENEPIO_0001921) | [#100](https://github.com/fairgenomes/information/issues/100) |closed|
| Type of sequencing                                           | [NCIT:C18881](http://purl.obolibrary.org/obo/NCIT_C18881)                                                                                                 | Ontological term subclasses of NCIT:C18881| [#42](https://github.com/fairgenomes/information/issues/42) | closed |
| Sequencing average read depth                                   | [NCIT:C155320](http://purl.obolibrary.org/obo/NCIT_C155320)                                                                                                | [positive iteger]| [#44](https://github.com/fairgenomes/information/issues/44) | closed |
| Observed read length                                                     | [NCIT:C153362](http://purl.obolibrary.org/obo/NCIT_C153362)                                                                                               | [positive integer] | [#47](https://github.com/fairgenomes/information/issues/47) | closed |
| Observed insert size                                                     | NA                                                                                                          | [positive integer] | [#48](https://github.com/fairgenomes/information/issues/48) | closed |
| Percentage Q30                                                     | [GENEPIO_0000089](http://bioportal.bioontology.org/ontologies/GENEPIO?p=classes&conceptid=http%3A%2F%2Fpurl.obolibrary.org%2Fobo%2FGENEPIO_0000089)                                                                                                          | [positive integer] | na | na |
| Percentage TR20                                                     | Percentage of the target sequence on which 20 or more unique reads were successfully mapped                                                                                                          | [positive integer] | na | na |

## Analysis information
| Meta-data element                                            | Preferred ontology term for meta\\\-data                                                                    | Value types                                                                                                   | Issue Number | Issue (open / closed) |
|-----------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|--------------|---------------------------------------------------------|
| Physical data location                      | [GAZ:00000448](http://purl.obolibrary.org/obo/GAZ_00000448) | propose: [subclass of [SNOMEDCT:370159000](http://bioportal.bioontology.org/ontologies/SNOMEDCT?p=classes&conceptid=370159000)] | [#49](https://github.com/fairgenomes/information/issues/49) | open |
| Abstract data location |  | propose: Free text [string] | [#50](https://github.com/fairgenomes/information/issues/50) | closed |
| Data formats stored | [EDAM:FORMAT_1915](http://bioportal.bioontology.org/ontologies/EDAM/?p=classes&conceptid=http%3A%2F%2Fedamontology.org%2Fformat_1915) | Ontological term subclasses of [EDAM:FORMAT_1915](http://bioportal.bioontology.org/ontologies/EDAM/?p=classes&conceptid=http%3A%2F%2Fedamontology.org%2Fformat_1915) | [#51](https://github.com/fairgenomes/information/issues/51) | closed |
| Algorithms used                                                 | [NCIT:C16275](http://purl.obolibrary.org/obo/NCIT_C16275) | Free text with links to https://omictools\\\.com, bio\\\.tool, GitHub, publication DOI or commercial supplier | [#52](https://github.com/fairgenomes/information/issues/52) | closed |
| Bioinformatic protocols used | [EDAM:DATA_2531](http://edamontology.org/format_2531) | propose: Free text [string] | [#53](https://github.com/fairgenomes/information/issues/53) | closed |
| Special parameters used | [NCIT:C44175](http://purl.obolibrary.org/obo/NCIT_C44175) | Free text [string] | [#54](https://github.com/fairgenomes/information/issues/54) | closed |
| Follows international WGS guidelines | [NCIT:C17564](http://purl.obolibrary.org/obo/NCIT_C17564) | URL or NULL | [#55](https://github.com/fairgenomes/information/issues/55) | open |

