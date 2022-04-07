#!usr/bin/perl
INIT:
print"Coding by Ranjan J. sarma \nM.Sc Bioinformatics\nCentre for Bioinformatics\nPondicherry University\n\n\n";
print"How many models generated? Type here=>:";
$a=<stdin>;
chomp($a);
print "\nEnter the Dope Scores of the mocdels one by one followed by pressing enter:\n\n";
print"Dope Scores are available in the modeller working directory as align2d.log file and dope scores are found at last section of the log file.\n\n";
for (1 .. $a) {
    my $num = <stdin>;
    chomp $num;
    push @dope_raw, $num;
}
@dope=sort {$a <=>$b}@dope_raw;
$size=scalar(@dope);
chomp($size);
if($size==$a){
open(fh,"+>Dope_score_result_analysis.txt");
print fh"********************Result of DOPE scores analysis**********************\n\n";
print fh"Total numbers of models =$a\n***********\n";
print fh"Total numbers of  scores given is =$size\n***********\n";
print fh"The input scores (Random)=@dope_raw\n***********\n";
print fh"4 models with minimum dope score are....\n\n";
print  fh"1. @dope[0]\n2. @dope[1]\n3. @dope[2]\n4. @dope[3]\n****************\n";
print  fh"\n**Most reliable structure having dope score : @dope[0]\n\n";
print  fh"****************************END**************************\n";
close fh;
print"********************Output File created successfully******************\nCheck Directory\n";
print"Press enter to exit";
$a=<stdin>;
exit;
}else{
print"Mistakes while typing Dope Scores\n";
}
goto INIT;
