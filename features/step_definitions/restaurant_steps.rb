Given /the following restaurants exist/ do |restaurants_table|
  restaurants_table.hashes.each do |restaurant|
    Restaurant.create restaurant
  end
end

Given /I submit the restaurant review/ do
	@user = User.find_by id: 1
	click_button("Save")
end