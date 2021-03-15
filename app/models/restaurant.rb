class Restaurant < ActiveRecord::Base
	has_many :restaurantReviews
end