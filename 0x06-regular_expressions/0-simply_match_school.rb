#!/usr/bin/env ruby

def match_school(argument)
  regex = /School/
  if argument.match?(regex)
    puts "The argument '#{argument}' contains the word 'School'."
  else
    puts "The argument '#{argument}' does not contain the word 'School'."
  end
end

if ARGV.length != 1
  puts "Usage: ruby script_name.rb <argument>"
else
  match_school(ARGV[0])
end
