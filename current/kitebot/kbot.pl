#!/usr/bin/perl
use warnings;

package kbot;
use base qw(Bot::BasicBot);
use YAML;
use Data::Dumper;


my $bot = kbot->new(
		server => 'irc.saurik.com',
		channels => ['#spam','#kbot'],
		nick => 'kbot',);

$::config = YAML::LoadFile('kelbot.yml');
sub reloadop{
	my $temp = YAML::LoadFile('kelbot.yml');
	    $::config = $temp;
}
sub addop{
	
}

sub said {
	my ($self, $message) = @_;
#	my $config = YAML::LoadFile('kelbot.yml');
	if($message->{body} =~ 'kb:reload'){
		reloadop();
	}#end of reloadop
	if($message->{body} =~ 'kb:oplist'){
		print Dumper($::config),"\n";
		$bot->say(channel => $message->{channel},
			  body => Dumper($::config) ."\n",
			);
	} #end of oplist	
		  
	if($message->{body} =~ 'kb:addop'){
		open (FILE, '>>', 'kelbot.yml');
	if(grep { $_ eq $message->{who} } @{ $::config->{OP} }){
	   my	$string = $message->{'body'};
		print Dumper($string);
		$string =~ s/kb:addop//;
		print Dumper($string);
		print FILE '  -'.$string."\n";
		close (FILE);
		
	}#end of grep
	}#end of addop
	if($message->{body} =~ 'kb:opme'){
		if(grep { $_ eq $message->{who} } @{ $::config->{OP} }){
			$bot->mode("$message->{channel} +o $message->{who}");
		} #endo of if
		 else{
			$bot->say(channel => $message->{channel},
     		        body => 'You aren\'t in the Operators list.',
				  address => $message->{who});
		} #end of else
	} #end of opme

	if($message->{body} =~ /kb:dopme/){
		if(grep { $_ eq $message->{who} } @{ $::config->{OP}}){
			$bot->mode("$message->{channel} -o $message->{who}");
		} else{
			$bot->say(channel => $message->{channel},
				  body => 'You aren\'t an Operator.',
				  address => $message->{who});
		} #end of else
	} #end of dopme
	if($message->{body} =~ /kb:gtfo/){
		$bot->quit();
	}
} #end of said

sub chanjoin {
	my ($self, $message) = @_;
	return 'kbot now online!';
}

sub help{ return "kb:addop, kb:opme,kb:dopme,kb:reload,kb:oplist,kb:gtfo.";}


$bot->run();
