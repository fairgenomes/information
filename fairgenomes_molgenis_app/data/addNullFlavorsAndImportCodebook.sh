cat $1.tsv hl7v3_nullflavors.tsv > $1_with_nf.tsv
mcmd import -p $1_with_nf.tsv --as fair-genomes_$1 --in fair-genomes
rm $1_with_nf.tsv
