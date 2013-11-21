require 'uri'
require 'time'

class Browser
  def initialize(question)
    @question = question
  end

  def browse 
    system("open", url) 
  end
  def url
    ("http://www.google.com/search?q=#{URI.escape(@question)}")
  end
end


puts "What quesiton do you have?"
question = gets.chomp
browser = Browser.new(question)
browser.browse

puts "Did you find the answer?"
answer = gets.chomp


File.open('stats.txt', 'a+') do |log|
  log.puts "\n"
  log.puts "Question '#{question}'"
  log.print "Answer: '#{answer}'"
end

File.open('stats.txt','a+') do |log|
  created = Time.now.strftime("%Y-%m-%d")
  log.puts "\nCreated on: #{created}" 
end
