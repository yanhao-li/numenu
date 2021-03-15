class RestaurantReviewsController < ApplicationController
	def index
		id = params[:format]
		@restaurant = nil
		@reviews = nil
		if id
			@restaurant = Restaurant.find(id)
			@reviews = @restaurant.restaurantReviews
		end

	end

	def new
	end
end