#!/usr/bin/env ruby

module Deleteenv
  def self.environment
    system "clear"
    puts "-------------- Menu --------------------------------"
    puts "1.Please specify the environment you would like to delete:"
    puts "------------------------------------------------------------"
    @name = gets()
    puts "Environment: #{name}"
    puts "Deleting #{name} ..."
    exit
  end
end
