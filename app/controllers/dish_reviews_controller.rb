class DishReviewsController < ApplicationController
	def index
		dish_id = params[:dish]
		restaurant_id = params[:restaurant]
		@restaurant = nil
		@reviews = nil
		if dish_id and restaurant_id
			@restaurant = Restaurant.find(restaurant_id)
			@dish = Dish.find(dish_id)
			@reviews = @dish.dish_reviews
		end
	end

	def new
		dish_id = params[:dish]
		restaurant_id = params[:restaurant]
		@restaurant = nil
		@dish = nil
		if dish_id and restaurant_id
			@restaurant = Restaurant.find(restaurant_id)
			@dish = Dish.find(dish_id)
		end
	end

	def create
		restaurant_id = params[:restaurant]
		dish_id = params[:dish]
		inputs = params[:dish_review]
		review = inputs[:review]
		rating = inputs[:rating]
	    @review = DishReview.create!(review: review, rating: rating, dish_id: dish_id)
	    redirect_to dish_reviews_path({:dish => dish_id, :restaurant => restaurant_id})
	    flash[:notice] = "Review was successfully submitted."
	end
end