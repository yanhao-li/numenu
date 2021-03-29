class RestaurantsController < ApplicationController
	def index
		if params[:restaurant_name]
			searched_name = params[:restaurant_name].downcase
			@restaurant = Restaurant.where("LOWER(name) LIKE ?", searched_name)
		else
			@restaurants = Restaurant.all
		end
		#@restaurants = Restaurant.all
	end

	def show
		@restaurant = Restaurant.find(params[:id])
	end
end