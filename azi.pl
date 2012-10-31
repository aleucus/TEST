=pod
$v=[1,2,3];
print $v->[1]."\n";

$h={"ion"=>10,
    "popescu"=>9};
print $h->{"popescu"}."\n";

$h={"popescu"=>[10,9,8],
    "ion"=>[7,6,5]};
#print $h->{"popescu"}->[1]."\n";
%h1=%$h;
while(($k,$v)=each(%h1))
{
 print $k." ";
@v1=@$v;
foreach$e(@v1)
{
 print $e." ";
}
print"\n";
}

use strict;
use warnings;
use Data::Dumper;

#referinta catre un array gol
my $ref_array = [];

#referinta catre un array populat
$ref_array = [1,2,"abc"];

#referinta catre un hash gol
my $ref_hash = {};

#referinta catre un hash populat
$ref_hash = {
    "nume" => "POPESCU",
    "prenume"=>"Vlad",
};

print Dumper($ref_array);
print Dumper($ref_hash);
=cut



my $tablou =
[
  {
    'nume' => 'CHIRIAC',
    'prenume' => 'Vasile',
    'materii' => {
                   'automate' => [9, 8],
                   'programare' => [10, 9],
                   'practica' => [8, 10],
                 }                  
  },
  {
    'nume' => 'VOGHINA',
    'prenume' => 'Claudiu',
    'materii' => {
                   'automate' => [8, 8],
                   'programare' => [8, 9],
                   'practica' => [10, 9],
                   'sport' => [9, 9],
                 }                  
  }
];
#print Dumper($tablou);
@h=@$tablou;
foreach $e1(@h)
{
%h1=%$e1;
while(($k,$v)=each(%h1))
{
if ($k ne 'materii')
{ 
print $k.": ".$v."\n";
}
else
{
print $k;
%h2=%$v;
while(($a,$b)=each(%h2))
{
print $a. " ";
@c=@$b;
foreach $e2(@c)
{print $e2." ";
print"\n";}
}
}
}
}
























