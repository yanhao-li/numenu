# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

users = [
	{
		:userId => '1', :phoneNumber => '565-233-0987', :firstName => 'Sebastien', :lastName => 'Smith',
		:city => 'New York', :state => 'NY', :zipCode => '10004', 
		:emailAddress => 'sebastien_smith@gmail.com', :password => 'pass1'
	},
	{
		:userId => '2', :phoneNumber => '563-213-0373', :firstName => 'Joseph', :lastName => 'Miller',
		:city => 'Philadelphia', :state => 'PA', :zipCode => '19103', 
		:emailAddress => 'joe_miller@gmail.com', :password => 'pass2'
	},
]

restaurants = [
	{
		:restaurantId => '1', :name => 'Garaje', :latitude => 37.7817529521, :longitude => -122.39612197,
		:phoneNumber => '343-234-0918', :streetName => '475 3rd St', :streetNumber => '', 
		:city => 'San Francisco', :state => 'CA', :zipCode => '94107'
	},
	{
		:restaurantId => '2', :name => 'Great Wraps', :latitude => 33.846335, :longitude => -84.3635778,
		:phoneNumber => '', :streetName => '3393 Peachtree Rd', :streetNumber => '', 
		:city => 'Atlanta', :state => 'GA', :zipCode => '30326'
	},
	{
		:restaurantId => '3', :name => 'Solae\'s Lounge', :latitude => 45.5592512, :longitude => -122.6464338,
		:phoneNumber => '', :streetName => '1801 NE Alberta St', :streetNumber => '', 
		:city => 'Portland', :state => 'OR', :zipCode => '97211'
	},

]

restaurant_reviews = [
	{
		:restaurantReviewId => '1', :userId => '1', :restaurantName => 'Garaje',
		:review => 'I hated it here. Too loud.', :rating => 1
	},
	{
		:restaurantReviewId => '2', :userId => '2', :restaurantName => 'Garaje',
		:review => 'My favorite restaurant. I love thier hamburgers.', :rating => 5
	},
	{
		:restaurantReviewId => '3', :userId => '1', :restaurantName => 'Great Wraps',
		:review => 'Decent place.', :rating => 3
	},
	{
		:restaurantReviewId => '4', :userId => '2', :restaurantName => 'Great Wraps',
		:review => 'The wraps here are great! Always kind service.', :rating => 5
	},
	{
		:restaurantReviewId => '5', :userId => '1', :restaurantName => 'Solae\'s Lounge',
		:review => 'The restaurant was dirty.', :rating => 2
	},
	{
		:restaurantReviewId => '6', :userId => '2', :restaurantName => 'Solae\'s Lounge',
		:review => 'This place needs to hire professional cleaners.', :rating => 1
	},

]

dishes = [
	{
		:dishId => '1', :dishName => 'Beef Brisket', :restaurantName => 'Garaje',
		:price => 6.49, :description => ''
	},
	{
		:dishId => '2', :dishName => 'Pulled Chicken', :restaurantName => 'Garaje',
		:price => 5.49, :description => ''
	},
	{
		:dishId => '3', :dishName => 'Baby Back Ribs', :restaurantName => 'Garaje',
		:price => 12.95, :description => ''
	},
	{
		:dishId => '4', :dishName => 'Chicken Caesar Wrap', :restaurantName => 'Great Wraps',
		:price => 8.99, :description => ''
	},
	{
		:dishId => '5', :dishName => 'Malibu Melt Wrap', :restaurantName => 'Great Wraps',
		:price => 7.99, :description => ''
	},
	{
		:dishId => '6', :dishName => 'Vegetarian Nachos', :restaurantName => 'Solae\'s Lounge',
		:price => 10.90, :description => 'corn chips topped with black beans.'
	},

]

dish_reviews = [
	{
		:dishReviewId => '1', :userId => '1', :dishName => 'Beef Brisket',
		:review => 'I liked it a lot.', :rating => 4
	},
	{
		:dishReviewId => '2', :userId => '1', :dishName => 'Baby Back Ribs',
		:review => 'The ribs were undercooked.', :rating => 2
	},
	{
		:dishReviewId => '3', :userId => '2', :dishName => 'Beef Brisket',
		:review => 'Very good beef brisket.', :rating => 4
	},
	{
		:dishReviewId => '4', :userId => '2', :dishName => 'Malibu Melt Wrap',
		:review => 'Disgusting.', :rating => 1
	},
	{
		:dishReviewId => '5', :userId => '3', :dishName => 'Chicken Caesar Wrap',
		:review => 'One of my favorite dishes from here!', :rating => 5
	},
]





users.each do |user|
  User.create!(user)
end

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end

#restaurant_reviews.each do |restaurant_review|
#  RestaurantReview.create!(restaurant_review)
#end

#dishes.each do |dish|
#  Dish.create!(dish)
#end

#dish_reviews.each do |dish_review|
#  DishReview.create!(dish_review)
#end