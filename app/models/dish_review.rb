class DishReview < ActiveRecord::Base
	belongs_to :dish, class_name: 'Dish'
  belongs_to :user, class_name: 'User'

  	def self.average_rating(dish_id)
  		avg = DishReview.where(dish_id: dish_id).average(:rating)
  		if avg.nil? 
  			"N/A"
  		else
  			avg
  		end
	end
end