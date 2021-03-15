class RestaurantsController < ApplicationController
	def index
		@restaurants = Restaurant.all
		# @restaurants.each do |r|
		# 	puts r.name
		# end
	end
end