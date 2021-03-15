class RestaurantReviewsController < ApplicationController
	def index
		id = params[:format]
		@restaurant = nil
		@reviews = nil
		if id
			@restaurant = Restaurant.find(id)
			@reviews = @restaurant.restaurant_reviews
		end
	end

	def new
		id = params[:format]
		@restaurant = nil
		if id
			@restaurant = Restaurant.find(id)
		end
	end

	def create
		restaurant_id = params[:format]
		inputs = params[:restaurant_review]
		review = inputs[:review]
		rating = inputs[:rating]
	    @review = RestaurantReview.create!(review: review, rating: rating, restaurant_id: restaurant_id)
	    redirect_to restaurant_reviews_path(restaurant_id)
	    flash[:notice] = "Review was successfully submitted."
	end
end