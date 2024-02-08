docker run -t -i -u root -v /mnt/data/hong/courses/varianceAnalysis/data:/data ensemblorg/ensembl-vep
INSTALL.pl -a cf -s homo_sapiens -y GRCh38
tabix -s 1 -b 2 -e 2 -f -S 1 AlphaMissense_hg38.tsv.gz
vep -i ADA_variant_rsid.txt --plugin AlphaMissense,file=AlphaMissense_hg38.tsv.gz -o ADA_variant_rsid_vep_aMissense.txt --cache --force_overwrite
