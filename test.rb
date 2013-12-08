require 'find'
require 'pry'

puts "What type of file are you looking for?"
type = gets.chomp
array = [type]

puts "What folder should we look at?"
search_folder = gets.chomp

jpg_file_paths = [] 
Find.find("/Users/Sungmoon/#{search_folder}") do |path|
  jpg_file_paths << path if path =~/.*\.#{type}$/i
  end
  

