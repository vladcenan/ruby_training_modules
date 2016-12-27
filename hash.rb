#!/usr/bin/env ruby
require 'json'
require 'fileutils'

def hash (a) 
  file = File.read('hash.json')
  data_hash = JSON.parse(file)
  data_hash[a]
end
sql = hash('sqluser')
puts sql

def show 
  mongodb = hash('mongodb')
  db = hash('database')

  puts "http://#{mongodb} connects to #{db}"
end
show
