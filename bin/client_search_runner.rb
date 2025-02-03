#!/usr/bin/env ruby

require 'json'
require_relative '../lib/client_search.rb'

path = '../lib/data/clients.json'
puts 'Enter Partial or Full Name to search for clients: '

full_name = gets.chomp

result = ClientSearch.process(path:).parse(params: { full_name: }).names

puts "Result : #{JSON.pretty_generate(result)}"

puts 'Do you want to show duplicate email(s)? '

answer = gets.chomp
if answer&.downcase != 'yes'
  puts 'You have not answered: `Yes`. Application is terminated! Thanks!'
  exit
end

emails = ClientSearch.parse(path:).process.emails
puts "Email that has duplicate : #{JSON.pretty_generate(emails)}"

puts "Test commit---"
