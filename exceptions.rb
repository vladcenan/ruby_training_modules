#!/usr/bin/env ruby

files = ['exceptionsfile1.txt', 'exceptionsfile2.txt']
files.each do |f|
  begin
    file = open(f)
    if file
      puts 'File opened successfully'
    end
  rescue StandardError
    puts f+' do not exist!'
    next
  end
end
