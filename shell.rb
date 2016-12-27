#!/usr/bin/env ruby

result = %x[uptime]
puts result

puts `uptime`

cmd = 'uptime'
system(cmd)
