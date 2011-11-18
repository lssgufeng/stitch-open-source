#!/usr/bin/ruby
require 'cinch'
require './libs/time/ktime.rb'

oplist = ['Kite','DHowett','mutex','oligos','Jumhyn'];
hoplist = ['diddlyuk','Salax','rms']

bot = Cinch::Bot.new do
	configure do |c|
		c.server = ARGV[0]
		c.nick = "rbot"
		c.user = "JunkyChiken"
		c.realname = "Kite's Rbot(Kbot's sister Ruby)"
		c.channels = ["#spam"]
	end
	on :message, "hello" do |m|
		m.reply "Hello, #{m.user.nick}"
	end
	on :message, /^!op (.+)$/ do |m,n|
		oplist.each do |test|
		 if m.user.nick == test
	  	    print n
		    if n == '.'
			bot.raw("MODE "+m.channel+" +o #{m.user.nick}")
		    end
		    bot.raw("MODE "+m.channel+" +o "+n)
		 end
		end
	end
	on :message, /^!dop (.*)$/ do |m,n|
		oplist.each do |test|
		  if m.user.nick == test
			print n
			if n == '.'
			   bot.raw("MODE "+m.channel+" +o "+n)
			end
			bot.raw("MODE "+m.channel+" -o #{m.user.nick}")
		  end
		end
	end
	on :message, /^!hop (.+)$/ do |m,n|
	   hoplist.each do |ht|
		if m.user.nick == ht
		bot.raw("MODE "+m.channel+" +h "+n)
		end
	   end
	   oplist.each do |ot|
		if m.user.nick == ot
		bot.raw("MODE "+m.channel+" +h "+n)
		end
	   end
	end
	on :message, /^!dhop (.+)$/ do |m,n|
	  oplist.each do |ot|
	  	if m.user.nick == ot
		bot.raw("MODE "+m.channel+" -h "+n)
		end
	  end
	  hoplist.each do |ht|
		if m.user.nick == ht
		bot.raw("MODE "+m.channel+" -h "+n)
		end
	  end
   	end
	on :message, "!help" do |m|
		m.reply "[!op,!dop] [!hop, !dhop] [!help] [!log] [!join, !leave]"
	end
	on :message, /^!nick (.+)$/ do |m,n|
		tmp = n
		oplist.each do |ot|
		if m.user.nick == ot
		bot.raw("NICK "+tmp)
		end
		end
	end
	on :message, /^!log (.+)$/ do |m,msg|
		m.reply "message written!"
		tmp = msg
		File.open("rbot.log","a") do |rlog|
		rltime = tflog
		rlog << rltime+" "+msg+" by: "+m.user.nick+"\n"
		rlog.close
		end
	end
	on :message, /^!join (.+)$/ do |m,chan|
		oplist.each do |ot|
		if m.user.nick == ot
			bot.raw("JOIN "+chan)
		end
		end
	end
	on :message, /^!leave (.+)$/ do |m,chan|
		oplist.each do |ot|
		if m.user.nick == ot
			bot.raw("PART "+chan)
		end
		end
	end
	on :message, /^!server (.+)$/ do |m,serv|
		bot.raw("SERVER "+serv)
	end
	on :message, /^!chantakeover (.+)$/ do |m,chan|
		print 'stuff'
	end
end
bot.start
