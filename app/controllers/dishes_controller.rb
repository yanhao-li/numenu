class DishesController < ApplicationController
	def index
		id = params[:format]
		@restaurant = nil
		@dishes = nil
		if id
			@restaurant = Restaurant.find(id)
			@dishes = @restaurant.dishes
		end
	end
end