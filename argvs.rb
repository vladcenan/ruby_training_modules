#!/usr/bin/env ruby

if ARGV.length != 2
  puts"Please set two arguments!"
  exit
end

ARGV.each do|a|
  puts "Argument: #{a}"
end

env1 = ARGV[0]
env2 = ARGV[1]
puts env1
puts env2
