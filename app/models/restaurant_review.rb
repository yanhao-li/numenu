class RestaurantReview < ActiveRecord::Base
	belongs_to :restaurant, class_name: 'Restaurants'
  	belongs_to :user, class_name: 'User'
end