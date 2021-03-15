class RestaurantReviewsController < ApplicationController
	def index
		id = params[:format]
		puts id
		puts "yay"
		@restaurant = nil
		@reviews = nil
		if id
			@restaurant = Restaurant.find(id)
			@reviews = @restaurant.restaurantReviews
		end
		puts @reviews.size
		puts "here"
	end

	def new
		id = params[:format]
		@restaurant = nil
		if id
			@restaurant = Restaurant.find(id)
		end
	end

	def create
		puts ""
		puts params
		puts ""
		restaurant_id = params[:format]
		inputs = params[:restaurant_review]
		review = inputs[:review]
		rating = inputs[:rating]
	    @review = RestaurantReview.create!(review: review, rating: rating, restaurant_id: restaurant_id)
	    flash[:notice] = "Review was successfully submitted."
	    puts @review
	    puts "done"
	    redirect_to restaurants_path
	end
end