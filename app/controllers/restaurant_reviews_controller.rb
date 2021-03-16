class RestaurantReviewsController < ApplicationController
	def index
		@restaurant = Restaurant.find(params[:restaurant_id])
		@reviews = @restaurant.restaurant_reviews
	end

	def new
		@restaurant = Restaurant.find(params[:restaurant_id])
	end

	def create
		inputs = params[:restaurant_review]
		restaurant_id = params[:restaurant_id]
		RestaurantReview.create!(
			review: inputs[:review],
			rating: inputs[:rating],
			restaurant_id: restaurant_id
		)
		redirect_to restaurant_reviews_path(restaurant_id)
		flash[:notice] = "Review was successfully submitted."
	end
end