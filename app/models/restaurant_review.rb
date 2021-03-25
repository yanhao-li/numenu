class RestaurantReview < ActiveRecord::Base
	belongs_to :restaurants, class_name: 'Restaurants'
  	belongs_to :users, class_name: 'User'
end