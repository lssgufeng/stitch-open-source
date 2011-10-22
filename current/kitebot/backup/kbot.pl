#!/usr/bin/perl

use strict;
use warnings;

package kbot;
use base qw(Bot::BasicBot);
use YAML;
use Data::Dumper;


my $bot = kbot->new(
		server => 'irc.saurik.com',
		channels => ['#spam','#kbot'],
		nick => 'kbot',);


sub reload{
	system("perl kbot.pl");
}


sub said {
	my ($self, $message) = @_;
	my $config = YAML::LoadFile('kelbot.yml');
	if($message->{body} =~ 'reload'){
		reload();
	}

	if($message->{body} =~ 'opme'){
		  foreach $::key (keys $config->{OP}){
			print $config->{OP}[$::key],"\n";
			if($config->{OP}[$::key] eq $message->{who}){
				$bot->mode($message->{channel}.' +o '.$message->{who});
				
			} #end of if op
		  } #end of foreach
		  if($config->{OP}[$::key-1] ne $message->{who}){
				$bot->say( channel => $message->{channel},
				body => 'You aren\'t in the Operators list.',
				address => $message->{who},
		       		 );
		} #end of optest
	} #end of opme

} #end of said

sub chanjoin {
	my ($self, $message) = @_;
	return 'kbot now online!';
}

$bot->run();
