class Dish < ActiveRecord::Base
	belongs_to :restaurant, optional: true
end