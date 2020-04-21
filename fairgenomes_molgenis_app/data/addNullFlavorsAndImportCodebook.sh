# concatenates HL7v3 NullFlavors to a codebook file and import
# usage: supply a single argument that will be used as the target codebook
# target codebook should be 'fair-genomes' package
# see: https://www.hl7.org/fhir/v3/NullFlavor/cs.html
cat $1.tsv hl7v3_nullflavors.tsv > $1_with_nf.tsv
mcmd import -p $1_with_nf.tsv --as fair-genomes_$1 --in fair-genomes
rm $1_with_nf.tsv
