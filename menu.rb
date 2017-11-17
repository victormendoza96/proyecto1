require_relative 'show'
require 'colorize'

class Menu

    def self.enter  # da enter automatico luego de precionar un tecla
	system("stty raw -echo")
	t = STDIN.getc
	system("stty -raw echo")
	return t.downcase
     end
     
    def self.option(op)#opciones para ver las noticias 
    	
    	case op
    	when 1
    		Display.s_reddit #ver show.rb
    	when 2
    		Display.s_mashable
    	when 3
    		Display.s_digg
    	when 4
    		Display.s_all
    	end
    end
		

end