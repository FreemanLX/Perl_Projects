#!/usr/bin/perl

use warnings;
use Data::Dumper;
use List::Util;
package student;

sub new{
   my $class = shift;
   my $student_name = {
                   'StudentFirstName' => shift,
                   'StudentLastName' => shift,
                   'Graduate grade' => shift
   };
   bless $student_name, $class;
   return $student_name;
}

sub get_student_data{
  my $this = shift;
  my @array_student = ($this->{'StudentFirstName'}, $this->{'StudentLastName'}, $this->{'Graduate grade'});
  return @array_student;
}



package classroom;

sub new{
   my $class = shift;
   my $this = {
           'class_students' => []
   };
   bless $this, $class;
   return $this;
}

sub classroom_add_students{
   my $this = shift; 
   push(@{$this->{class_students}}, @_); 
   return $this;
}

sub get_list_of_students{
   my $this = shift;
   return "@{$this -> {class_students}}"; 
}

my $object = new classroom();

print "Cati studenti are clasa aceasta?";
my $count_students = <>;
chomp $count_students;

print "Introduceti studentii \n";
for (my $index = 0; $index < $count_students; $index++){
my $temp_index = $index + 1;
print "Studentul $temp_index: \n";
print "Numele: \n";
my $student_temp_name = <>;
chomp $student_temp_name;
print "Prenumele: \n";
my $student_temp_forname = <>;
chomp $student_temp_forname;
my $student_temp_grade = '0';
do{
	print "Media generala din anul trecut: \n";
        my $student_temp_grade = <>;
        chomp $student_temp_grade;
}
while ($student_temp_grade lt '0' || $student_temp_grade gt '10');
my $student_object_temp = new student($student_temp_name, $student_temp_forname, $student_temp_grade); 

 $object -> classroom_add_students($student_object_temp, $index);  
}

print "Lista introdusa de studenti este: \n";
my @returned =  $object -> get_list_of_students();
for (my $index = 0; $index < scalar(@returned); $index+=2){
        my $student_id = $returned[$index + 1];
        my $this = $returned[$index];
        my @student_list = ($this->{'StudentFirstName'}, $this->{'StudentLastName'}, $this->{'Graduate grade'});
        my $temp_name = $student_list[0];
        my $temp_forename = $student_list[1];
        my $temp_grade = $student_list[2];
        print "ID: $student_id, Nume: $temp_name Prenume: $temp_forename Nota: $temp_grade";           
}
  
