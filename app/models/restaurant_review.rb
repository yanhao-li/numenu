class RestaurantReview < ActiveRecord::Base
	belongs_to :restaurant, optional: true
  	belongs_to :user, optional: true
end