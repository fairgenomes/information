###############################
## FAIR Genomes MOLGENIS app ##
###############################

## Runnable SH setup script. Work-in-progress!

## Prerequisites:
## - Git client (used: v2.8.1)
## - Docker desktop client (used: v2.2.0.5)
## - Python3 and pip3 (used: Python 3.7.2, pip 19.3.1)
## - Unix-like Shell environment

## Boot up a fresh MOLGENIS 8.3 Docker instance.
## Process can be screened or left open in Shell instance.
# git clone https://github.com/molgenis/docker.git
# cd docker/molgenis/8.3
# docker-compose up

## Download the FAIR Genomes repository.
## This contains the root folder for the MOLGENIS app: fairgenomes_molgenis_app.
# git clone https://github.com/fairgenomes/information.git

## For Docker helper scripts, see fairgenomes_molgenis_app/docker/ folder.
## Adjust these to your preference.
# sh up.sh
# sh down.sh
# sh nuke.sh

## MOLGENIS 8.3 Docker instance should be running at:
# open http://localhost:80/

## Also install MOLGENIS Commander 1.7 and verify that it works.
## See: https://github.com/molgenis/molgenis-tools-commander.
# pip3 install molgenis-commander==1.7 --force-reinstall
# mcmd --version

## Connect MOLGENIS Commander to the Docker instance.
## Follow the setup. If setup before, modify ~/.mcmd/mcmd.yaml.
## Lastly , ping server to see if connection is working
# mcmd
# mcmd ping

## Set working dir to 'data' to start app setup
cd data

## First, create the package in which all FAIR Genomes data will be kept.
## This will also form FAIR Genomes user group.
mcmd import -p sys_md_Package.tsv

# Second, import codebook attributes.
# Personal
sh importGenericCodebookAttributesAs.sh personal_codebook_biologicalsex
sh importGenericCodebookAttributesAs.sh personal_codebook_countryofresidence
sh importGenericCodebookAttributesAs.sh personal_codebook_ethnicity
sh importGenericCodebookAttributesAs.sh personal_codebook_countryofbirth
sh importGenericCodebookAttributesAs.sh personal_codebook_patientstatus
sh importGenericCodebookAttributesAs.sh personal_codebook_primaryaffiliatedinstitute
sh importGenericCodebookAttributesAs.sh personal_codebook_datainotherinstitutes
# Clinical
sh importGenericCodebookAttributesAs.sh clinical_codebook_phenotypicterms
sh importGenericCodebookAttributesAs.sh clinical_codebook_unobservedphenotypes
sh importGenericCodebookAttributesAs.sh clinical_codebook_typeofphenotypicdata
sh importGenericCodebookAttributesAs.sh clinical_codebook_clinicaldiagnosis
sh importGenericCodebookAttributesAs.sh clinical_codebook_geneticdiagnosis
sh importGenericCodebookAttributesAs.sh clinical_codebook_medicationinfo
sh importGenericCodebookAttributesAs.sh clinical_codebook_proceduralhistory
# Material
sh importGenericCodebookAttributesAs.sh material_codebook_materialtype
sh importGenericCodebookAttributesAs.sh material_codebook_anatomicalsource
sh importGenericCodebookAttributesAs.sh material_codebook_storageconditions
# Sample preparation
sh importGenericCodebookAttributesAs.sh sampleprep_codebook_targetenrichmentkit
sh importGenericCodebookAttributesAs.sh sampleprep_codebook_librarypreparationkit
# Sequencing
sh importGenericCodebookAttributesAs.sh sequencing_codebook_sequencingplatform
sh importGenericCodebookAttributesAs.sh sequencing_codebook_sequencinginstrumentmodel
sh importGenericCodebookAttributesAs.sh sequencing_codebook_typeofsequencing
# Analysis
sh importGenericCodebookAttributesAs.sh analysis_codebook_dataformatsstored
sh importGenericCodebookAttributesAs.sh analysis_codebook_physicaldatalocation
# Consent
sh importGenericCodebookAttributesAs.sh generalconsent_codebook_orgcreatingconsent
sh importGenericCodebookAttributesAs.sh individualconsent_codebook_isrestrictedto

# Third, import the actual codebook tables.
# Add null flavours to each (see: https://www.hl7.org/fhir/v3/NullFlavor/cs.html).
# Personal
sh addNullFlavorsAndImportCodebook.sh personal_codebook_biologicalsex
sh addNullFlavorsAndImportCodebook.sh personal_codebook_countryofresidence
sh addNullFlavorsAndImportCodebook.sh personal_codebook_ethnicity
sh addNullFlavorsAndImportCodebook.sh personal_codebook_countryofbirth
sh addNullFlavorsAndImportCodebook.sh personal_codebook_patientstatus
sh addNullFlavorsAndImportCodebook.sh personal_codebook_primaryaffiliatedinstitute
sh addNullFlavorsAndImportCodebook.sh personal_codebook_biologicalsex
sh addNullFlavorsAndImportCodebook.sh personal_codebook_datainotherinstitutes
# Clinical
sh addNullFlavorsAndImportCodebook.sh clinical_codebook_phenotypicterms
sh addNullFlavorsAndImportCodebook.sh clinical_codebook_unobservedphenotypes
sh addNullFlavorsAndImportCodebook.sh clinical_codebook_typeofphenotypicdata
sh addNullFlavorsAndImportCodebook.sh clinical_codebook_clinicaldiagnosis
sh addNullFlavorsAndImportCodebook.sh clinical_codebook_geneticdiagnosis
sh addNullFlavorsAndImportCodebook.sh clinical_codebook_medicationinfo
sh addNullFlavorsAndImportCodebook.sh clinical_codebook_proceduralhistory
# Material
sh addNullFlavorsAndImportCodebook.sh material_codebook_materialtype
sh addNullFlavorsAndImportCodebook.sh material_codebook_anatomicalsource
sh addNullFlavorsAndImportCodebook.sh material_codebook_storageconditions
# Sample preparation
sh addNullFlavorsAndImportCodebook.sh sampleprep_codebook_targetenrichmentkit
sh addNullFlavorsAndImportCodebook.sh sampleprep_codebook_librarypreparationkit
# Sequencing
sh addNullFlavorsAndImportCodebook.sh sequencing_codebook_sequencingplatform
sh addNullFlavorsAndImportCodebook.sh sequencing_codebook_sequencinginstrumentmodel
sh addNullFlavorsAndImportCodebook.sh sequencing_codebook_typeofsequencing
# Analysis
sh addNullFlavorsAndImportCodebook.sh analysis_codebook_dataformatsstored
sh addNullFlavorsAndImportCodebook.sh analysis_codebook_physicaldatalocation
# Consent
sh addNullFlavorsAndImportCodebook.sh generalconsent_codebook_orgcreatingconsent
sh addNullFlavorsAndImportCodebook.sh individualconsent_codebook_isrestrictedto

# Fourth, import FAIR Genomes model attributes for Personal, Clinical, etc.
mcmd import -p personal_attributes.tsv --as attributes --in fair-genomes
mcmd import -p generalconsent_attributes.tsv --as attributes --in fair-genomes
mcmd import -p study_attributes.tsv --as attributes --in fair-genomes
mcmd import -p material_attributes.tsv --as attributes --in fair-genomes
mcmd import -p clinical_attributes.tsv --as attributes --in fair-genomes
mcmd import -p individualconsent_attributes.tsv --as attributes --in fair-genomes
mcmd import -p sampleprep_attributes.tsv --as attributes --in fair-genomes
mcmd import -p sequencing_attributes.tsv --as attributes --in fair-genomes
mcmd import -p analysis_attributes.tsv --as attributes --in fair-genomes

# Fifth, upload GUI and required assets
mcmd import -p sys_StaticContent.tsv
cd ../img
mcmd add logo -p analysis.png
mcmd add logo -p codebooks.png
mcmd add logo -p clinical.png
mcmd add logo -p generalconsent.png
mcmd add logo -p individualconsent.png
mcmd add logo -p contribute.png
mcmd add logo -p info.png
mcmd add logo -p material.png
mcmd add logo -p personal.png
mcmd add logo -p sampleprep.png
mcmd add logo -p sequencing.png
mcmd add logo -p study.png
mcmd add logo -p fair_genomes_logo_notext.png
mcmd add logo -p fair_genomes_logo.png

# Sixth, assign rights and permissions
# NB: in the demo, we allow anonymous (not-logged in users) to edit data!
mcmd make --role ANONYMOUS fair-genomes_EDITOR
mcmd give anonymous view sys_md

# Seventh, import some dummy data
cd ../data
mcmd import -p dummy_personal.tsv --as fair-genomes_personal
mcmd import -p dummy_generalconsent.tsv --as fair-genomes_generalconsent
mcmd import -p dummy_study.tsv --as fair-genomes_study
mcmd import -p dummy_material.tsv --as fair-genomes_material
mcmd import -p dummy_clinical.tsv --as fair-genomes_clinical
mcmd import -p dummy_individualconsent.tsv --as fair-genomes_individualconsent
mcmd import -p dummy_sampleprep.tsv --as fair-genomes_sampleprep
mcmd import -p dummy_sequencing.tsv --as fair-genomes_sequencing
mcmd import -p dummy_analysis.tsv --as fair-genomes_analysis

# Optional: commands to remove all table definitions
#mcmd delete fair-genomes_analysis --force
#mcmd delete fair-genomes_sequencing --force
#mcmd delete fair-genomes_sampleprep --force
#mcmd delete fair-genomes_individualconsent --force
#mcmd delete fair-genomes_clinical --force
#mcmd delete fair-genomes_material --force
#mcmd delete fair-genomes_study --force
#mcmd delete fair-genomes_generalconsent --force
#mcmd delete fair-genomes_personal --force

# TODO: check data types: XREFs (replace with 'categorical'?), labels, datatypes (date/datetime?), etc.
