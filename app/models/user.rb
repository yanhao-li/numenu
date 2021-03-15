class User < ActiveRecord::Base
	has_many :restaurant_reviews
	has_many :dish_reviews
end