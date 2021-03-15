class Dish < ActiveRecord::Base
	belongs_to :restaurant, optional: true
	has_many :dish_reviews
end