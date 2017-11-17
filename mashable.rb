require 'rest-client'
require 'json'
require 'colorize'

class Create_mas
	
     def self.mashable 
        r = JSON.parse(RestClient.get 'http://mashable.com/stories.json')
	     @resource = []
		r["new"].each do |news|
			 array = []
             array << news["title"]
             array << news["author"]
			 time = Date.parse(news["post_date"])#tranformo la fecha en algo mas practico ejm(2017-10-2)
			 array << time.strftime("%d-%m-%Y")#ordeno la fecha en dia mes y anio
             array << news["link"]

			 @resource << array  
		end
			 r["hot"].each do |news|
			 array = []
             array << news["title"]
             array << news["author"]
			 time = Date.parse(news["post_date"])
			 array << time.strftime("%d-%m-%Y")
             array << news["link"]

			 @resource << array  
		 
		end 
			@resource
	end

end
