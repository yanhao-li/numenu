class Dish < ActiveRecord::Base
	belongs_to :restaurants, class_name: 'Restaurant'
	has_many :dish_reviews
end