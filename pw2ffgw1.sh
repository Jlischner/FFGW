~/espresso-4.3.2/bin/iotk convert gkvectors.dat gkvectors.xml
var=$(grep -n "columns" gkvectors.xml | awk '{print $1}'|sed 's/.$//g')
sed '1,'$var'd' gkvectors.xml > gkvectors1
egrep -iv "<|>" gkvectors1 > gkvectors
rm -f gkvectors1
rm -f gkvectors.xml

~/espresso-4.3.2/bin/iotk convert evc.dat evc.xml
egrep -iv "<|>" evc.xml > evc
rm -f  evc.xml
sed 's/./ /24' evc > evc1
rm -f evc

egrep -iv "<|0000000000" eigenval.xml > eigenval1
