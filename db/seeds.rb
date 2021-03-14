# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

users = [
	{
		:user_id => '1', :phone_number => '565-233-0987', :first_name => 'Sebastien', :last_name => 'Smith',
		:city => 'New York', :state => 'NY', :zip_code => '10004', 
		:email_address => 'sebastien_smith@gmail.com', :password => 'pass1'
	},
	{
		:user_id => '2', :phone_number => '563-213-0373', :first_name => 'Joseph', :last_name => 'Miller',
		:city => 'Philadelphia', :state => 'PA', :zip_code => '19103', 
		:email_address => 'joe_miller@gmail.com', :password => 'pass2'
	},
]

restaurants = [
	{
		:restaurant_id => '1', :name => 'Garaje', :latitude => 37.7817529521, :longitude => -122.39612197,
		:phone_number => '343-234-0918', :street_name => '475 3rd St', :street_number => '', 
		:city => 'San Francisco', :state => 'CA', :zip_code => '94107'
	},
	{
		:restaurant_id => '2', :name => 'Great Wraps', :latitude => 33.846335, :longitude => -84.3635778,
		:phone_number => '', :street_name => '3393 Peachtree Rd', :street_number => '', 
		:city => 'Atlanta', :state => 'GA', :zip_code => '30326'
	},
	{
		:restaurant_id => '3', :name => 'Solae\'s Lounge', :latitude => 45.5592512, :longitude => -122.6464338,
		:phone_number => '', :street_name => '1801 NE Alberta St', :street_number => '', 
		:city => 'Portland', :state => 'OR', :zip_code => '97211'
	},

]

restaurant_reviews = [
	{
		:restaurant_review_id => '1', :review => 'I hated it here. Too loud.', :rating => 1
	},
	{
		:restaurant_review_id => '2', :review => 'My favorite restaurant. I love thier hamburgers.', :rating => 5
	},
	{
		:restaurant_review_id => '3', :review => 'Decent place.', :rating => 3
	},
	{
		:restaurant_review_id => '4', :review => 'The wraps here are great! Always kind service.', :rating => 5
	},
	{
		:restaurant_review_id => '5', :review => 'The restaurant was dirty.', :rating => 2
	},
	{
		:restaurant_review_id => '6', :review => 'This place needs to hire professional cleaners.', :rating => 1
	},

]

dishes = [
	{
		:dish_id => '1', :price => 6.49, :description => ''
	},
	{
		:dish_id => '2', :price => 5.49, :description => ''
	},
	{
		:dish_id => '3', :price => 12.95, :description => ''
	},
	{
		:dish_id => '4', :price => 8.99, :description => ''
	},
	{
		:dish_id => '5', :price => 7.99, :description => ''
	},
	{
		:dish_id => '6', :price => 10.90, :description => 'corn chips topped with black beans.'
	},

]

dish_reviews = [
	{
		:dish_review_id => '1', :review => 'I liked it a lot.', :rating => 4
	},
	{
		:dish_review_id => '2', :review => 'The ribs were undercooked.', :rating => 2
	},
	{
		:dish_review_id => '3', :review => 'Very good beef brisket.', :rating => 4
	},
	{
		:dish_review_id => '4', :review => 'Disgusting.', :rating => 1
	},
	{
		:dish_review_id => '5', :review => 'One of my favorite dishes from here!', :rating => 5
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