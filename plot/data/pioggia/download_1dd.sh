cd pioggia
wget -r --no-verbose --no-parent -nH ftp://meso.gsfc.nasa.gov/pub/1dd-v1.2/
for f in *.gz; do echo $f; gunzip $f; done
#python open_1dd.py
