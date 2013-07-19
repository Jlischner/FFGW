~/espresso-4.3.2/bin/iotk convert gkvectors.dat gkvectors.xml
var=$(grep -n "columns" gkvectors.xml | awk '{print $1}'|sed 's/.$//g')
sed '1,'$var'd' gkvectors.xml > gkvectors1
egrep -iv "<|>" gkvectors1 > gkvectors
rm -f gkvectors1
rm -f gkvectors.xml

~/espresso-4.3.2/bin/iotk convert evc1.dat evc1.xml
egrep -iv "<|>" evc1.xml > evc
rm -f  evc1.xml
sed 's/./ /24' evc > evc1
rm -f evc

~/espresso-4.3.2/bin/iotk convert evc2.dat evc2.xml
egrep -iv "<|>" evc2.xml > evc
rm -f evc2.xml
sed 's/./ /24' evc > evc2
rm -f evc

egrep -iv "<|0000000000" eigenval1.xml > eigenval1
egrep -iv "<|0000000000" eigenval2.xml > eigenval2
