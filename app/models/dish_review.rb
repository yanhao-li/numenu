class DishReview < ActiveRecord::Base
	belongs_to :dishes, class_name: 'Dish'
  	belongs_to :users, class_name: 'User'
end