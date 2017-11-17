require_relative 'menu'
require 'colorize'

class Main
	
    
    loop do
	loop do
		system("clear")
		puts "reddit    -1"
    	puts "mashable  -2"
    	puts "digg      -3"
    	puts "all       -4"
     op = Menu.enter.to_i #ver menu.rb
     	 Menu.option(op)
     break if (op == 1 || op == 2 || op == 3 || op == 4)
     end
     
     

     puts"exit? y/n"  
     leave = Menu.enter

     break if leave == "y"
     end
end
news = Main.new
news
