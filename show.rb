require_relative 'reddit'
require_relative 'digg'
require_relative 'mashable'
require_relative 'menu'
require_relative 'launchy'
require 'colorize'
require 'launchy'

class Display 

	def self.show(news)
		cont = 0
		for i in 0..news.length - 1
			for j in i+1..(news.length - 1) #ordeno por fecha
				if news[i][2] < news[j][2]
					t = news[i]
					news[i] = news[j]
					news[j] = t
				end
			end
	    end	
	
		
   		news.each do |news_date|
			puts news_date
			cont += 1
			if cont == 5 #stop para mostrar 5 y decidir y ver mas o abrir la publicacion
				cont = 0
				puts "\n press a to continue  \t\t press s to open news".blue
			
				loop do
				x = Menu.enter #opciones 

				if x == "s"
					Page.url_option(news) #ver launchy.rb
				end
				
				break if (x == "a" || x== "s")
				end

				

				system("clear")#limpio las 5 noticias para mostrar las nuevas
			end	
		puts "------------------".red #separador de noticias
		end
    end
	
	def self.s_mashable 
		system("clear")
     Display.show(Create_mas.mashable)# creo el arreglo mashable para ordenarlo y mostrarlo con Display
	end
	
	def self.s_reddit
		system("clear")
	Display.show(Create_re.reddit)# creo el arreglo reddit para ordenarlo y mostrarlo con Display
	end

	def self.s_digg
		system("clear")
	Display.show(Create_digg.digg)# creo el arreglo digg para ordenarlo y mostrarlo con Display
	end

	def self.s_all
		system("clear")
		
        Display.show(Create_mas.mashable + Create_re.reddit + Create_digg.digg)#meto todas las noticias en un solo arreglo
																			   #para poder ordenarlo por fecha
	end
end