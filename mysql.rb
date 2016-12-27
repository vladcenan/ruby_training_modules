#!/usr/bin/env ruby
require 'mysql'
require 'rubygems'

if ARGV.length != 3 then 
  puts "\nUsage: Please specify two arguments in this order: ./mysql.rb ENVIRONMENT DB ACCESS_PATH\n"
  puts "\n"
  exit   
end

a, b, c = ARGV
puts "Environment: #{a}"
puts "DB: #{b}"
puts "Access Location Path: #{c}"

begin
    #Import mysql module and create con object = MySql server, User, Password, Database
    con = Mysql.new "#{a}-mysql.net", 'root', 'root', "db_#{b}"

    #Data for storage_system table
    con.query("INSERT INTO storage_system(UUID, NAME, TYPE, TIER_TYPE, USER_ID, ACCESS_KEY) VALUES('00000000-0000-0000-0000-000000000000', 'dev_tmp', 'LOCAL_DISK', 'ONE', 'null', 'null')")
    
    #Data for access_location table
    con.query("INSERT INTO access_location(UUID, ACCESS_LOCATION, STORAGE_SYSTEM_UUID, WATER_MARK, STATUS, METADATA) VALUES('00000000-0000-0000-0000-000000C0FFEE', '#{c}', '00000000-0000-0000-0000-000000000000', '0', 'active', 'null')")
rescue Mysql::Error => e
    puts e.errno
    puts e.error
    
ensure
    con.close if con
end
