class DishReview < ActiveRecord::Base
	belongs_to :dish, optional: true
  	belongs_to :user, optional: true
end