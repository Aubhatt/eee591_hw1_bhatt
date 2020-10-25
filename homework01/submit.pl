#!/usr/bin/perl

my $ass = shift ;

my $cmd = "" ;
$cmd .= "make cleanall ; ";
$cmd .= "cd .. ; ";
$cmd .= "tar -czvf " . $ass . ".tar.gz " . $ass . "  ; ";
$cmd .= "echo \" ".$ass." \" | mail -s \" $ass \" -r \$USER\@asu.edu -a $ass.tar.gz asu.eee.498.aut17\@gmail.com  ; ";

#print $cmd ;

print `$cmd` ;


    
