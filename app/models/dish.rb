class Dish < ActiveRecord::Base
	belongs_to :restaurant, class_name: 'Restaurant'
	has_many :dish_reviews

	def average_rating(dish_id)
  		avg = Dish.joins(:dish_reviews).where(id: dish_id).average(:rating)
  		if avg.nil? 
  			"N/A"
  		else
  			avg
  		end
	end

end