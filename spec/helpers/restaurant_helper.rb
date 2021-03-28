def restaurant_exists(id)
	rest = Restaurant.find_by id: id

	if rest == nil
		rest = FactoryBot.create(:restaurant, :id => 1)
	end

	return rest
end