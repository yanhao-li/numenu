class Dish < ActiveRecord::Base
	belongs_to :restaurant, class_name: 'Restaurant'
	has_many :dish_reviews
end