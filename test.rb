require 'find'
require 'pry'

puts "What type of file are you looking for?"
type = gets.chomp
array = [type]

puts "What folder should we look at?"
search_folder = gets.chomp
no_string = search_folder.gsub(/"/, "") 

jpg_file_paths = []

  binding.pry
Find.find('/Users/Sungmoon/#{array[0]}') do |path|
  jpg_file_paths << path if path =~/.*\.#{type}$/i
  end


