require 'rest-client'
require 'json'
require 'colorize'

class Create_re
	
	def self.reddit
		r = JSON.parse(RestClient.get 'reddit.com/.json')
		
		@resource = []
		r["data"]["children"].each do |news|  #itero dentro de children
			array = []
             array << news["data"]["author"]
             array << news["data"]["title"]
			 time = Time.at(news["data"]["created"])# transformo la fecha en una mas legible
			 array << time.strftime("%d-%m-%Y") # ordeno la fecha en dia mes y anio
             array << news["data"]["url"]
             @resource << array
		end
			@resource
	end
end