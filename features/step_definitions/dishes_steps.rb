Given /the following dishes exist/ do |dishes_table|
  dishes_table.hashes.each do |dish|
  	old = Dish.find_by id: dish["id"]
  	if old != nil
  		old.destroy
  	end
    Dish.create dish
  end
end