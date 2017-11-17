
require 'colorize'
require 'launchy'


class Page

    def self.url_option(news)
        system("clear")
        puts "select option".green
            for i in 0..news.length - 1
                puts("#{i}: #{news[i][0]}\n")#imprimo las el titulo junto con su numero de opcion para ver esa noticia
                
            end
        x = gets.chomp.to_i
        Launchy.open(news[x][3])# abre la noticia en el navegador predeterminado	
    end

end	