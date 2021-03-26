class Restaurant < ActiveRecord::Base
	has_many :dishes
	has_many :restaurant_reviews

	def average_rating(restaurant_id)
  		avg = Restaurant.joins(:restaurant_reviews).where(id: restaurant_id).average(:rating)
  		if avg.nil? 
  			"N/A"
  		else
  			avg
  		end
	end
end