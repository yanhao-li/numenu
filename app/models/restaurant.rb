class Restaurant < ActiveRecord::Base
	has_many :dishes
	has_many :restaurant_reviews

end