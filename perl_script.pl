#!/usr/bin/perl

use warnings;
use Data::Dumper;

BEGIN{

   print "Loading perl\n";
   

}

$float_var = 3.5;
$int_var = 10;
if ($float_var == $int_var){
    print "True \n";
}
else{
   if ($float_var < $int_var){
       print "Less\n";
   }   
   else{
      print "More\n";
   }
  
}


@perl_number_array = (1, 2, 3, 4);

print "(";
$n = 4;

for ($index = 0; $index < @perl_number_array; $index++){
     if($index == $n - 1){
          print "$perl_number_array[$index]";
     }
     else{
         print "$perl_number_array[$index], ";    
     } 

}

print(") is a integer array\n");
foreach $element (@perl_number_array){
   if($element == $perl_number_array[$n - 1]){
      print "$element \n"; 
   }
   else{
      print "$element, ";
   }
}


%data = ('Windows', 1, 'Linux', 2, 'MacOS', 3);


$string_1 = "Mihalea";
$string_2 = "Andreas";
print $string_1." ".$string_2."\n";

print Dumper(\%data);




END{

   print "You finished the program\n";

}
