#!/usr/bin/perl
use 5.010;

print "Enter a day-code between 0-7\n";

chomp(my $day_code = <>);

given ($day_code){
  when ('0') { print 'Monday' ;}
  when ('1') { print 'Saturday' ;} 
  default {print 'Other days' ;} 
}
