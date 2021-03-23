class User < ActiveRecord::Base
	has_secure_password 
	has_many :restaurant_reviews
	has_many :dish_reviews
end