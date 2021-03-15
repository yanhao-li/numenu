class RestaurantReviewsController < ApplicationController
	def index
		@restaurant = Restaurant.find(params[:id])
		@reviews = @restaurant.restaurant_reviews
	end

	def new
		@restaurant = Restaurant.find(params[:id])
	end

	def create
		inputs = params[:restaurant_review]
		RestaurantReview.create!(
			review: inputs[:review],
			rating: inputs[:rating],
			restaurant_id: params[:id]
		)
		redirect_to restaurant_reviews_path(restaurant_id)
		flash[:notice] = "Review was successfully submitted."
	end
end