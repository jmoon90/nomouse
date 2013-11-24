require 'uri'
require 'time'
require 'pry'

class Browser
  
  def initialize(site,question)
    @site = site
    @question = question
  end

  def browse_google 
    system("open", google) 
  end

  def browse_sof
    system("open", sof) 
  end

  def google
    ("http://www.google.com/search?q=#{URI.escape(@question)}")
  end

  def sof
    ("http://www.stackoverflow.com/search?q=#{URI.escape(@question)}")
  end

  def which_site
  end

  def question_input
  end


end

    puts "Would you like to search Google, StackOverFlow(SOF), or both?"
    print "> "
    site = gets.chomp 

    puts "What quesiton do you have?"
    print "> "
    question_input = gets.chomp

    browser = Browser.new(site, question_input)
    if site.downcase == "google"
      browser.browse_google
    elsif site.downcase =="both"
      browser.browse_google
      browser.browse_sof
    elsif site.downcase =="sof"
      browser.browse_sof
    else 
      puts "You entered a wrong site"
      exit
    end

puts "Did you find the answer?"
answer = gets.chomp

File.open('stats.txt', 'a+') do |log|
  log.puts "\n"
  log.puts "Question '#{@question}'"
  log.print "Answer: '#{answer}'"
end

File.open('stats.txt','a+') do |log|
  created = Time.now.strftime("%Y-%m-%d")
  log.puts "\nCreated on: #{created}" 
end
