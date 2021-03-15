class DishReviewsController < ApplicationController
	def index
		@dish = Dish.find(params[:dish_id])
	end

	def new
		@dish = Dish.find(params[:dish_id])
		@restaurant = Restaurant.find(@dish.id)
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