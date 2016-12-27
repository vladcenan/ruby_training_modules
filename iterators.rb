#!/usr/bin/env ruby

arry = [1, 2, 'three', 4]
arry.each do |i|
  puts i
end

hash = {"numar" => 1, "nume" => 'John', "oras" => 'Cluj'}
hash.each do |key, value|
  puts key if value 
end 

action_items = {"Loan Origination" => false, "AOS" => false}
puts "Run for which type:"
action_items.each do |item, need_for_item|
  puts item + "? (Y/N)"
  case gets
    when "y\n", "Y\n"
      action_items[item] = true
    when "n\n", "N\n"
      action_items[item] = false
  end
end
puts "Here is your actions allowed:"
action_items.each do |item, need_for_item|
   puts item if need_for_item
end
