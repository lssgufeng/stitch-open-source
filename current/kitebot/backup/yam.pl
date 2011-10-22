#!/usr/bin/perl

use strict;
use warnings;

use YAML;
use Data::Dumper;


my $config = YAML::LoadFile('kelbot.yml');

print Dumper($config),"\n";


