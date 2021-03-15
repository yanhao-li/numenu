Given /the following dishes exist/ do |dishes_table|
  dishes_table.hashes.each do |dish|
    Dish.create dish
  end
end