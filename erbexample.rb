#!/usr/bin/env ruby
require 'erb'

if ARGV.length != 2
  puts 'Please give title and text arguments in order to generate the html template!'
  exit
end

title=ARGV[1]
text=ARGV[0]

open("erbtemplate.html", 'w+') { |f| f.chmod(0755)
  template=IO.read('erbtemplate.html.erb')
  x = ERB.new(template).result(binding)
  f << "#{x}\n"
}

firefox = `firefox erbtemplate.html`
