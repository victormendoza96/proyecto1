require 'rest-client'
require 'json'
require 'colorize'


class Create_digg
  

     def self.digg
		 r = JSON.parse(RestClient.get 'http://digg.com/api/news/popular.json')
     @resource = []

     r["data"]["feed"].each do |news|#itero dentro de feed
             array = []
             array << news["content"]["title"]
             array << news["content"]["author"]
             time = Time.at(news["date"])# transformo la fecha en una mas legible
             array << time.strftime("%d-%m-%Y")# ordeno la fecha en dia mes y anio
             array << news["content"]["url"]

             @resource << array       
    end
            @resource 
	end
  
end
# z = Create.new
# z.digg
# puts z.title