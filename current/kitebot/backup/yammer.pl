#!/usr/bin/perl
use warnings;
use strict;

use YAML;
use Data::Dumper;

open my $fh, '<', 'kelbot.yml';

my $config = YAML::LoadFile($fh);
print Dumper($config), "\n";



foreach my $key (keys %$config->{OP}){
print "key: $key, value $config->{OP}->{$key}\n";
}
