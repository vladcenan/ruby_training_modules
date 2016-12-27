#!/usr/bin/env ruby

class Createenv
  def initialize
    @name
    environment 
    show
  end

  def name
    @name
  end
  
  def environment
    system "clear"
    puts "-------------- Menu --------------------------------"
    puts "1.Please specify the environment you would like to create:"
    puts "------------------------------------------------------------"
    @name = gets()
    puts "Environment: #{name}"
  end    
  
  def show 
    puts "Creating #{name} ..."
    exit
  end
end
