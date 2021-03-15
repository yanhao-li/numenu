class DishesController < ApplicationController
	def index
		id = params[:format]
		@restaurant = nil
		@dishes = nil
		if id
			@restaurant = Restaurant.find(id)
			@dishes = Dish.where(restaurant_id: @restaurant.restaurant_id)
		end
	end
end