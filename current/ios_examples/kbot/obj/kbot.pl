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

$::config = YAML::LoadFile('/var/root/testing/kbot/obj/kelbot.yml');
sub reloadop{
	my $temp = YAML::LoadFile('/work/perl/kelbot/kelbot.yml');
	    $::config = $temp;
}
sub addop{
	
}

sub said {
	my ($self, $message) = @_;
#	my $config = YAML::LoadFile('kelbot.yml');
	if($message->{body} =~ '!reloadcfg'){
		reloadop();
	}#end of reloadop
	if($message->{body} =~ '!reload'){
		$bot->shutdown($bot->quit_message());
		system('/work/perl/kelbot/kbot.pl');
	}
#	if($message->{body} =~ '!oplist'){
#		my @array;
#		for my $key (keys %config->{OP}){
#			my $value = $::config->{OP}->{$key};
#			push(@array,$value);
#		}
#		my $size = @array;
#		my $x = 0;
#		$bot->say(channel => $message->{channel},
#			  body => 'The Operators are:',"\n",);
#		print 'The Operators are:',"\n";
#		for (;$x < $size; ++$x){
#			print $array[$x],"\n";
#			$bot->say(channel =>$message->{channel},
#				  body => $array[$x]."\n");
#		}
#
#		$bot->say(channel => $message->{channel},
#			  body => '',
#			);
#	} #end of oplist	
		  
	if($message->{body} =~ '!addop'){
		open (FILE, '>>', '/work/perl/kelbot/kelbot.yml');
	if(grep { $_ eq $message->{who} } @{ $::config->{OP} }){
	   my	$string = $message->{'body'};
		print Dumper($string);
		$string =~ s/!addop//;
		print Dumper($string);
		print FILE '  -'.$string."\n";
		close (FILE);
		
	}#end of grep
	}#end of addop
	elsif($message->{body} =~ '!opme'){
		if(grep { $_ eq $message->{who} } @{ $::config->{OP} }){
			$bot->mode("$message->{channel} !o $message->{who}");
		} #endo of if
		 else{
			$bot->say(channel => $message->{channel},
     		        body => 'You aren\'t in the Operators list.',
				  address => $message->{who});
		} #end of else
	} #end of opme

	elsif($message->{body} =~ /!dopme/){
		if(grep { $_ eq $message->{who} } @{ $::config->{OP}}){
			$bot->mode("$message->{channel} -o $message->{who}");
		} else{
			$bot->say(channel => $message->{channel},
				  body => 'You aren\'t an Operator.',
				  address => $message->{who});
		} #end of else
	} #end of dopme
	elsif($message->{body} =~ /!gtfo/){
		$bot->shutdown($bot->quit_message());
	}
	elsif($message->{body} =~ /ios 5 untether/gi){
		$bot->say(channel => $message->{channel},
			  body => 'At this point in time its currently only Tethered!',
			  address => $message->{who});
	}
	elsif($message->{body} =~ /4s jailbreak/gi or $message->{body} =~ /4s/gi and /jailbreak/gi){
	$bot->say(channel=> $message->{channel},
		  body => '4s is currently not jailbreakable',
		  address => $message->{who});
	}
	if($message->{body} =~ '!giveop'){
		if(grep { $_ eq $message->{who} } @{ $::config->{OP} }){
			my $string;
			$string = $message->{body};	
			$string =~ s/!giveop //gi;	
			$bot->mode($message->{channel}.' +o '.$string);
		} 
	}
	if($message->{body} =~ '!takeop'){
		if(grep { $_ eq $message->{who} } @{ $::config->{OP} }){
			my $string;
			$string = $message->{body};
			$string =~ s/!takeop //gi;
			$bot->mode($message->{channel}.' -o '.$string);
		}
	}
} #end of said

sub chanjoin {
	my ($self, $message) = @_;
	return 'kbot now online!';
}

sub help{ return "!addop, !opme,!dopme,!reload,!oplist,!gtfo, !giveop, !takeop.";}


$bot->run();
