class DishReviewsController < ApplicationController
	def index
		@dish = Dish.find(params[:dish_id])
	end

	def new
		@dish = Dish.find(params[:dish_id])
	end

	def create
		if session[:user_id] != nil
				@dish_id = params[:dish_id]
	    	@review = DishReview.create!(
	    		review: params[:review],
	    		rating: params[:rating],
	    		dish_id: @dish_id,
	    		user_id: session[:user_id]
	    	)
	    	redirect_to dish_reviews_path(@dish_id)
	    	flash[:notice] = "Review was successfully submitted."
	    else
	    	redirect_to dish_reviews_path(dish_id), alert: "Please login or sign up first"
	    end
	end
end