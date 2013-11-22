require 'uri'


class Browser
  def initialize(question)
    @question = question
  end

  def browse 
    system("open", url) 
  end
  def url
    ("http://www.google.com/#q={URI.escape(@question)}")
  end
end


puts "What quesiton do you have?"
question = gets.chomp
browser = Browser.new(question)
browser.browse
