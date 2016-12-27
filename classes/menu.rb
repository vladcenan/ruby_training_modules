#!/usr/bin/env ruby
require_relative "createenv.rb"
require_relative "runtest.rb"
require_relative "deleteenv.rb"

class Menu
  def initialize
    mainMenu
  end

  def navigateTo(what)
    what.new.display
    subMenu1
    mainMenu
  end

  def subMenu1
    while true
    system "clear"
      puts "-------------- Menu --------------------------------"
      puts "What would you like to do?"
      puts "1. Create environment" 
      puts "2. Delete environment"
      puts "3. Back"
      puts "4. Exit"
      puts "------------------------------------------------------------"
      puts "Enter your selection:"
    case gets.strip
      when "1"
        navigateTo Createenv
      when "2"
        navigateTo Deleteenv.environment        
      when "3"
        navigateTo Menu
      when "4"
        exit
      else
        puts "Error: Please select an option between 1 and 4"
        exit
    end
    end
  end
  
  def mainMenu
    while true
    system "clear"
      puts "-------------- Menu --------------------------------"
      puts "What would you like to do?"
      puts "1. Manage an environment" 
      puts "2. Manage a service in a specified environment"
      puts "3. Run tests"
      puts "4. Exit"
      puts "------------------------------------------------------------"
      puts "Enter your selection:" 
    case gets.strip
      when "1"
        navigateTo subMenu1 
      when "2"
        printf "submenu2\n"
        exit 
      when "3"
        navigateTo RunTest
        exit 
      when "4"
        exit 
      else 
        puts "Error: Please select an option between 1 and 4"
        exit 
    end
    end
  end
Menu.new
end
