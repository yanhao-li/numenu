def dish_exists(id)
	dish = Dish.find_by id: id

	if dish == nil
		dish = FactoryBot.create(:dish, :id => 1)
	end

	return dish
end