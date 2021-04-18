class RestaurantReviewsController < ApplicationController
	def index
		@restaurant = Restaurant.find(params[:restaurant_id])
		@reviews = @restaurant.restaurant_reviews
	end

	def new
		@restaurant = Restaurant.find(params[:restaurant_id])
	end

	def create
		if session[:user_id] != nil
			@restaurant_id = params[:restaurant_id]
			@review_content = params[:review]
			@rating = params[:rating]

			RestaurantReview.create!(
				review: @review_content,
				rating: @rating,
				restaurant_id: @restaurant_id,
				user_id: session[:user_id]
			)

			redirect_to restaurant_reviews_path(@restaurant_id)
			flash[:notice] = "Review was successfully submitted."
		else
			redirect_to restaurant_reviews_path(restaurant_id)
			flash[:notice] = "Please login or sign up first"
		end
	end
end