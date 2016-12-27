#!/usr/bin/env ruby
require 'net/http'
require 'uri'

uri = URI.parse('http://www.endava.com/en/Delivery-Centres/Cluj')
  request = Net::HTTP::Get.new(uri)

  response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == "https") do |http|
    http.request(request)
  end

if response.kind_of? Net::HTTPSuccess
   puts 'The site is UP!'+response.code
else
   puts 'Critical! The site is down!'+response.code
   puts response.message
end

if response.code == '200'
  puts 'OK'
else
  puts 'NOT OK'
end

puts response.code

if response.body.match(/Cluj is now an important business destination/)
  puts 'OK'
else
  puts 'NOT OK'
end
