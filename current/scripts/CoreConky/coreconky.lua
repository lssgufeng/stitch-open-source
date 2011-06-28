#!/usr/bin/env lua

--Core's coreconky script
--type -h for more info

version = 1.10

if arg[1] == "-new"
  then
    os.execute("mkdir ~/.conky");
end

if arg[1] == "-k"
  then
    print("Killing conky...")
    os.execute("sudo killall conky")
    print ("Killed conky")
end

if arg[1] == "-h"
  then 
	print ("-h  prints this screen")
	print ("-k  kills conky")
	print ("-s  starts conky")
	print ("-e  edit conky.conf")
	print ("-b  back up conky.conf")
	print ("-v  prints version")
end

if arg[1] == "-s"
  then 
	os.execute("conky >> ~/.conky/conky.report")
	os.execute("clear")
end

if arg[1] == "-e"
  then
	os.execute("sudo nano /etc/conky/conky.conf")
end

if arg[1] == "-b"
  then
	os.execute("sudo cp /etc/conky/conky.conf /etc/conky/conky.conf.old")
end

if arg[1] == "-v"
  then
	print ("Version:",version)
end
