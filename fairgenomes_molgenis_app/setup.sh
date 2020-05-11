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

# Fourth, import FAIR Genomes model attributes for Personal, Clinical, etc.
mcmd import -p personal_attributes.tsv --as attributes --in fair-genomes
mcmd import -p clinical_attributes.tsv --as attributes --in fair-genomes
mcmd import -p material_attributes.tsv --as attributes --in fair-genomes
mcmd import -p sampleprep_attributes.tsv --as attributes --in fair-genomes


# TODO: the remaining sections
# TODO: example data in actual tables for Personal, Clinical, etc?
# TODO: check XREFs, labels, datatypes, etc.

