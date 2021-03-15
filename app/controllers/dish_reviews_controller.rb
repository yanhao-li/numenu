class DishReviewsController < ApplicationController
	def index
		@dish = Dish.find(params[:dish_id])
	end

	def new
		@dish = Dish.find(params[:dish_id])
	end

	def create
		dish_id = params[:dish_id]
		inputs = params[:dish_review]
		review = inputs[:review]
		rating = inputs[:rating]
	    @review = DishReview.create!(review: review, rating: rating, dish_id: dish_id)
	    redirect_to dish_reviews_path(dish_id)
	    flash[:notice] = "Review was successfully submitted."
	end
end