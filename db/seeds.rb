# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

users = [
	{
		:phone_number => '565-233-0987', :first_name => 'Sebastien', :last_name => 'Smith',
		:city => 'New York', :state => 'NY', :zip_code => '10004', 
		:email_address => 'sebastien_smith@gmail.com', :password => 'pass1'
	},
	{
		:phone_number => '563-213-0373', :first_name => 'Joseph', :last_name => 'Miller',
		:city => 'Philadelphia', :state => 'PA', :zip_code => '19103', 
		:email_address => 'joe_miller@gmail.com', :password => 'pass2'
	},
]

restaurants = [
	{
		:name => 'Community Food & Juice', :latitude => 40.805941, :longitude => -73.9657478,
		:phone_number => '212-665-2800', :street_address => '2893 Broadway', 
		:city => 'Manhattan', :state => 'NY', :zip_code => '10025'
	},
	{
		:name => 'Junzi Kitchen', :latitude => 40.8058137, :longitude => -73.9651685,
		:phone_number => '917-261-2497', :street_address => '2896 Broadway',
		:city => 'Manhattan', :state => 'NY', :zip_code => '10025'
	},
	{
		:name => 'Massawa', :latitude => 40.8097913, :longitude => -73.9586122,
		:phone_number => '212-663-0505', :street_address => '1239 Amsterdam Ave', 
		:city => 'New York', :state => 'NY', :zip_code => '10027'
	},
	{
		:name => 'Kikoo Sushi', :latitude => 40.8015956, :longitude => -73.9613715,
		:phone_number => '212-663-0505', :street_address => '998 Columbus Ave', 
		:city => 'New York', :state => 'NY', :zip_code => '10025'
	},
	{
		:name => 'Elysian Fields', :latitude => 40.8088518, :longitude => -73.9593463,
		:phone_number => '212-837-1389', :street_address => '1207 Amsterdam Ave', 
		:city => 'New York', :state => 'NY', :zip_code => '10027'
	},
	{
		:name => 'Symposium', :latitude => 40.8055157, :longitude => -73.9642686,
		:phone_number => '212-865-1011', :street_address => '544 W 113th St', 
		:city => 'New York', :state => 'NY', :zip_code => '10025'
	},
	{
		:name => 'Max Soha', :latitude => 40.8112405, :longitude => -73.9580424,
		:phone_number => '212-531-2221', :street_address => '1274 Amsterdam Ave', 
		:city => 'New York', :state => 'NY', :zip_code => '10027'
	},
	{
		:name => 'Pisticci', :latitude => 40.8141691, :longitude => -73.9603502,
		:phone_number => '212-932-3500', :street_address => '125 La Salle St', 
		:city => 'New York', :state => 'NY', :zip_code => '10027'
	},

]

restaurant_reviews = [
	{
		:review => 'I hated it here. Too loud.', :rating => 1
	},
	{
		:review => 'My favorite restaurant. I love thier hamburgers.', :rating => 5
	},
	{
		:review => 'Decent place.', :rating => 3
	},
	{
		:review => 'The wraps here are great! Always kind service.', :rating => 5
	},
	{
		:review => 'The restaurant was dirty.', :rating => 2
	},
	{
		:review => 'This place needs to hire professional cleaners.', :rating => 1
	},

]

dishes = [
	{
		:price => 6.49, :description => '', :restaurant_id => '2'
	},
	{
		:price => 5.49, :description => '', :restaurant_id => '3'
	},
	{
		:price => 12.95, :description => '', :restaurant_id => '1'
	},
	{
		:price => 8.99, :description => '', :restaurant_id => '1'
	},
	{
		:dish_name => "tacos", :price => 7.99, :description => 'tasty tasty tacos', :restaurant_id => '1'
	},
	{
		:price => 10.90, :description => 'corn chips topped with black beans.', :restaurant_id => '1'
	},

]

dish_reviews = [
	{
		:review => 'I liked it a lot.', :rating => 4
	},
	{
		:review => 'The ribs were undercooked.', :rating => 2
	},
	{
		:review => 'Very good beef brisket.', :rating => 4
	},
	{
		:review => 'Disgusting.', :rating => 1
	},
	{
		:review => 'One of my favorite dishes from here!', :rating => 5
	},
]





users.each do |user|
  User.create!(user)
end

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end

restaurant_reviews.each do |restaurant_review|
  RestaurantReview.create!(restaurant_review)
end

dishes.each do |dish|
  Dish.create!(dish)
end

dish_reviews.each do |dish_review|
  DishReview.create!(dish_review)
end