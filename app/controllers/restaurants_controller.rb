class RestaurantsController < ApplicationController
	def index
		if params[:restaurant_name]
			searched_name = params[:restaurant_name].downcase
			searched_name = '%' + searched_name + '%'  # add wildcards
			@restaurants = Restaurant.where("LOWER(name) LIKE ?", searched_name)
		else
			@restaurants = Restaurant.all
		end
	end

	def show
		@restaurant = Restaurant.find(params[:id])
	end

	private

	def restaurant_params
		params.require(:restaurant).permit(:id, :restaurant_name)
	end
end