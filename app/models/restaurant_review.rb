class RestaurantReview < ActiveRecord::Base
	  belongs_to :restaurant, class_name: 'Restaurant'
  	belongs_to :user, class_name: 'User'

  	def self.average_rating(restaurant_id)
  		avg = RestaurantReview.where(restaurant_id: restaurant_id).average(:rating)
  		if avg.nil? 
  			"N/A"
  		else
  			avg
  		end
	end
end