#!/usr/bin/perl

use strict;
use Data::Dumper;

# format file : 254	1e-67	133	98		denovo1089998	133	1	133		1336	460	328	>626902
# blast8 file : denovo1143557	66023	99.44	177	1	0	1	177	338	514	3.3e-94	342.0


chomp (my $inp=$ARGV[0]);

open(IF,"$inp") or die "Cannot open input file\n"; 
open(OF,">$inp.score") or die "Cannot open input file\n";

##########################################################
my $F={}; my $R={};
####################################################

my $blastoutF = {};my $score;

while(chomp(my $line = <IF>)) 
{
	if ($line =~ /^#/)
	{
		next
	}
        my @arr=split(/\t/,$line);
        #print "start $arr[5]\n";
        if(exists($blastoutF->{$arr[0]}))
        {
                # print "A1 $arr[5]\n";<stdin>;
                if($arr[11] == $score)
                {
                         push (@{$blastoutF->{$arr[0]}}, $line);
                }
		elsif ($arr[11] > $score)
		{
			@{$blastoutF->{$arr[0]}} = ();
			push (@{$blastoutF->{$arr[0]}}, $line);
		}
                next if(!eof);
        }
	else {
        push (@{$blastoutF->{$arr[0]}}, $line);;
        $score=$arr[11];
		}
        #print "SCORE=$score\t$line\n";
}
#print Dumper $blastoutF;

close(IF);

print "blastF array done....printing in progress\n";

foreach my $query (keys %{$blastoutF})
{
        # print "Processing started";
        foreach my $hit (@{$blastoutF->{$query}})
        {
                        print OF $hit."\n";
        
        }
}
  
