class Url < ActiveRecord::Base

	before_create :create_short_url

	def create_short_url
		array = []
		numbers = (1..9).to_a
		mayus = ("A".."Z").to_a
		characters = ('a'..'z').to_a + numbers + mayus
		array << characters.sample(7)
		string = array.join
		self.short_url = "http://localhost:9393/#{string}" 

  end
  
end
