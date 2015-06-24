class Url < ActiveRecord::Base

	before_save :create_short_url

	def create_short_url
		puts "R" * 28
		puts self.short_url
		self.short_url = "Algo"
		puts self.short_url
     
  end
  
end
