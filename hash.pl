#!/usr/bin/perl

use warnings;
use Data::Dumper;

my %IntegrateOS = ( 
  
   'Sales' => {
                 'Andreas' => { 
                                  'Email' => 'andreasmihalea@integrateos.com',
                                  'Salariu' => {
                                                  'Valoare' => '2500',
                                               
                                                  'Tip Salariu' => 'Euro',
                                               },
                                  'Job' => 'Contabil',
                                  'Ani' => '10 ani',
                              } 
             
               },

    'System Admin' => {
                    'Freeman' => {
                                       'Email' => 'freeman@integrateos.com',
                                       'Salariu' => {
                                                       
                                                        'Valoare' => '2500',

                                                        'Tip Salariu' => 'Euro',
                                                   },
                                       'Job' => 'Contabil',
                                       'Ani' => '10 ani',
                   
                                  }                  

  },

);
 
print Dumper(\%IntegrateOS); 
