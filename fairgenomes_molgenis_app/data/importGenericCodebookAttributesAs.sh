# usage: supply a single argument that will be used as the target table
# the generic attributes for a codebook will then be imported to form this table
# for instance:
# sh importGenericCodebookAttributesAs.sh personal_countryofresidence_codebook
# creates a new set of attributes for table 'personal_countryofresidence_codebook'
# note:
# SED command differs for GNU vs MacOS/BSD. See:
# https://stackoverflow.com/questions/16745988/sed-command-with-i-option-in-place-editing-works-fine-on-ubuntu-but-not-mac
cp generic_codebook_attributes.tsv $1_attributes.tsv
sed -i '' "s/REPLACEME/$1/g" $1_attributes.tsv
mcmd import -p $1_attributes.tsv --as attributes --in fair-genomes
rm $1_attributes.tsv
