#NoMouse

##About 

NoMouse is a plugin script for your terminal. It allows you to not leave the terminal and directly ask google a question and it will search the result in your default browser in goolge for you. If you would like to learn how I came up with this idea check out my [blog](http://jmoon90.github.io).

It also inputs the question you asked to a separate file to keep track of how you form questions. By looking at how you evolved in asking technical questions it can be a rough estimate of how much you improved as a programmer. 

Another feature is that it also asks users for an answer input. This way you don't have to go back to google to search for the answer but can easily track back your questions and answers

###Tips on using NoMouse

I recommend you creating an alias for the script. I'm currently using zsh so I had to go into my .zshrc to create one. This is what I've done.
>alias google="ruby ~/Dropbox/LA/nomouse/browser.rb"  

This allows me to type 'google' the terminal will know to run the script. 

### To Do

-Search in StackOverFlow alongside google (DONE) 
-Find applications and files on your computer (Priority) 
-Search any website (Next in line)   
-Reporting to see how many times we searched for a word? E.G (Ruby, Rails, JSON, etc)



##Recommendations

Contact me if you have any recommendations to improve this script or want to see a feature added.
Twitter - @johnmoon6

License
nomouse is releasedunder the [MIT License](). Attriution is appreciated, but not required.
