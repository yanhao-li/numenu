class DishReview < ActiveRecord::Base
	belongs_to :dish, class_name: 'Dish'
  	belongs_to :user, class_name: 'User'
end