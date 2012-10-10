print "primul program \n";
#linia nu se va afisa
=pod
	wsjadkjdksajlksoa
	dkwjdisa
=cut
#scalari
$a=5;
$b="test";
$c=5.7;
print "a=$a \n";
print "b=$b \n";
print "c=$c \n";
#operatii cu scalari
$a=$a+3;
print"$a \n";
#vectori
@v=(1,2,3);
print "$v[0] \n";
print "$v[1] \n";
#afiseaza ultima valoare
print "$v[-1] \n";
#nr de elemente din vector
print scalar(@v) ;
print "\n";
#functiile join afiseaza 1-test-2-test-3
$s=join("-test-",@v);
print "$s\n";
#functia split ca sa scoatem test
@v1= split("-test-",$s);
#hesurile
%h=("ion",9,"pop",10);
print $h{"ion"}."\n";
#toate cheile sa fie afisate
print keys(%h);
#afisam valorile
print values(%h);
print "\n";
#concatenam
$s="ceva"."tot";
print $s;
print "\n";
#stringuri care suporta interpolare si care nu
$a=10;
print 'a=$a \n';#nu suporta
print "a=$a \n";#suporta
# daca vrem sa citim de la tastatura
$d=<STDIN>;
print "d=$d";
#structura if
$a=5;
$b=6;
if($a==$b)
{ printf "a=b \n";}
if($a<$b)
{ print "a<b\n";}
if($a>$b)
{ print "a>b\n"}
