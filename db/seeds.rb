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

dishes = [
	# for Community Food & Juice
	{
		:dish_name => 'Fish of the Day',
		:price => 24.00, 
		:description => 'choice of one side'
	},
	{
		:dish_name => 'Crispy Wild Organic Salmon',
		:price => 22.00, 
		:description => 'pan-seared with spring ragout of shiitakes, sugar snap peas, leeks & asparagus, with horseradish miso glaze' 
	},
	{
		:dish_name => 'House Ravioli',
		:price => 18.00, 
		:description => 'truffled spring pea filling, lemon butter sauce, satur farms micro greens'
	},
	{
		:dish_name => 'Seared Sea Scallops',
		:price => 24.00, 
		:description => 'jumbo Chatham scallops over fresh summer corn pudding, with tomato concasse, sugar snap peas, and herb pan juices'
	},
	{
		:dish_name => 'Grilled Salmon Burger',
		:price => 16.00, 
		:description => 'made in house with wild organic salmon, served with avocado, arugula, wasabi mayo, and a side of dressed local greens'
	},
	# Junzi Kitchen
	{
		:dish_name => 'firecracker chicken rice',
		:price => 9.99, 
		:description => '(spicy) white rice, firecracker chicken, stir-fried cabbage, pickled red cabbage, crispy shallots (add soy egg +1.5)'
	},
	{
		:dish_name => 'cantonese bbq chicken rice',
		:price => 11.99, 
		:description => 'white rice, cantonese bbq chicken, roasted yams, stir-fried cabbage, ginger scallion sauce, scallions'
	},
	{
		:dish_name => 'sichuan grilled pork rice',
		:price => 11.99, 
		:description => '(spicy) brown rice, sichuan grilled pork, bean sprouts, spicy pickled chayote, cilantro, chili oil'
	},
	{
		:dish_name => 'spicy sesame chicken noodles',
		:price => 12.79, 
		:description => 'spring noodles, furu sesame sauce, cantonese bbq chicken, bean sprouts, cucumbers, garlic chili, scallions'
	},
	{
		:dish_name => 'sesame tofu noodles',
		:price => 11.29, 
		:description => '(vegan) spring noodles, furu sesame sauce, griddled tofu, bean sprouts, cucumbers, cilantro'
	},
	# Massawa
	{
		:dish_name => 'SHIRO',
		:price => 13.60, 
		:description => 'Puréed split peas cooked with herbs and a hint of spice'
	},
	{
		:dish_name => 'TSEBHI BEGHE',
		:price => 14.50, 
		:description => 'Spicy chunks simmered within a thick sauce of berbere'
	},
	{
		:dish_name => 'TEBSI',
		:price => 14.50, 
		:description => 'Cubes of beef sautéed w/ onions, tomatoes, and jalapeno peppers (served mild or spicy)'
	},
	{
		:dish_name => 'ALITCHA BEGHE',
		:price => 14.50, 
		:description => 'Mild lamb stew of curry, rosemary, and puréed onions'
	},
	{
		:dish_name => 'ZEGENI',
		:price => 14, 
		:description => 'Savory beef stew simmered w/ berbere and onions'
	},
	# Kikoo Sushi
	{
		:dish_name => 'Chirashi Bowl',
		:price => 18.00, 
		:description => 'Served with assorted sashimi on sushi rice.'
	},
	{
		:dish_name => 'Poke Bowl',
		:price => 18.00, 
		:description => 'Served Hawaiian style sashimi over sushi rice.'
	},
	{
		:dish_name => 'Chicken Teriyaki Bowl',
		:price => 15.00, 
		:description => 'Served with grill chicken with teriyaki sauce and steam broccoli over rice in bowl.'
	},
	{
		:dish_name => 'Kobe Beef Sushi',
		:price => 60.00, 
		:description => 'Served with 6 pieces Kobe beef sushi and 1 Kobe beef roll.'
	},
	{
		:dish_name => 'Gyu Bowl',
		:price => 15.00, 
		:description => 'Served with sauteed beef with onion over rice in bowl.'
	},
	# Elysian Fields
	{
		:dish_name => 'Chicken Platter',
		:price => 16.75, 
		:description => 'generous cuts of natural chicken breast served with fries and basmati rice'
	},
	{
		:dish_name => 'Pork Platter',
		:price => 16.75, 
		:description => 'cuts of center pork served with fries and basmati rice'
	},
	{
		:dish_name => 'Beef Kebab Platter',
		:price => 17.75, 
		:description => 'hand rolled seasoned ground beef over basmati rice, tomato herbed sauce, fries'
	},
	{
		:dish_name => 'Grilled Shrimp Platter',
		:price => 17.75, 
		:description => 'juicy and tender grilled marinated shrimp served with rice and basmati rice'
	},
	{
		:dish_name => 'Gyro Giaourtlou Platter',
		:price => 14.75, 
		:description => 'gyro with paprika yogurt sauce, tomato, onions, fries'
	},
	# Symposium
	{
		:dish_name => 'Chicken Ala\'Greco',
		:price => 14.95, 
		:description => 'Broiled, marinated 1/2 chicken.'
	},
	{
		:dish_name => 'Pork Souvlaki Platter',
		:price => 15.95, 
		:description => 'Skewer served with fries, tzatziki, pita and Greek salad.'
	},
	{
		:dish_name => 'Lamb Exohiko',
		:price => 21.95, 
		:description => 'Baked tender lamb in phyllo dough with carrots, peas and artichokes.'
	},
	{
		:dish_name => 'Beef Gyro Platter',
		:price => 11.95, 
		:description => 'Strips served with toasted pita, Greek salad and tzatziki'
	},
	{
		:dish_name => 'Shrimp Santorini',
		:price => 23.95, 
		:description => ''
	},
	# Max Soha
	{
		:dish_name => 'Chicken Parmigiana',
		:price => 18.95, 
		:description => 'breaded chicken breast topped with tomato sauce, melted mozzarella, basil & a side of spaghetti and tomato sauce'
	},
	{
		:dish_name => 'Striped Sea Bass Livornese',
		:price => 21.95, 
		:description => 'seared striped sea bass filet with shrimp, capers, black, olvies, chopped tomatoes & a side of sauteed brussel sprouts'
	},
	{
		:dish_name => 'Grilled New York Strip Steak',
		:price => 24.95, 
		:description => 'mushrooms, cracked black pepper, red wine sauce & a side of roasted potatoes'
	},
	{
		:dish_name => 'Chiken Marsala',
		:price => 18.95, 
		:description => 'mushrooms, Marsala wine & a side of mashed potatoes'
	},
	{
		:dish_name => 'Salmone Alla Griglia',
		:price => 20.95, 
		:description => 'grilled salmon filet with lemon, caper-butter sauce & a side of sauteed spinach'
	},
	# Pisticci
	{
		:dish_name => 'Baby Lettuce Salad',
		:price => 13.00, 
		:description => 'tender spring mix with cherry tomatoes and lightly dressed creamy balsamic'
	},
	{
		:dish_name => 'Vegetable Ceci',
		:price => 11.00, 
		:description => 'Grilled Portobello, zucchini, & squash medallions topped with chickpea puree and fresh mozz di bufala'
	},
	{
		:dish_name => 'Penne Pisticci',
		:price => 12.79, 
		:description => 'red & yellow vine tomatoes with melted fresh mozzarella'
	},
	{
		:dish_name => 'Grilled Salmon Filet',
		:price => 23.00, 
		:description => 'we’ll cook your filet on the rare side so you can bring it to temperature at home. served with oven roasted tomatoes'
	},
	{
		:dish_name => 'Rigatoni alla Vodka',
		:price => 19.00, 
		:description => 'vodka, cream, tomato, parmigiano and a little bite of spice'
	},
]


restaurant_reviews = [
	{
		:review => 'I hated it here. Too loud.', :rating => 1
	},
	{
		:review => 'My favorite restaurant. I love their hamburgers.', :rating => 5
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
		:review => 'Great restaurant. I highly recommend coming here at least once.', :rating => 5
	},
	{
		:review => 'Test bad review', :rating => 1
	},
	{
		:review => 'Test okay review', :rating => 3
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


# seed users table
users.each do |user|
  User.create!(user)
end

# seed restaurants table
# also seed the dishes table with a reference to their associated restaurant
# 5 dish reviews per resturant and in order.
# store the resturant_id into the dish seeds so they can be created w. foreign key
$i = 0
$j = 1
$r_id
restaurants.each do |restaurant|
  
  res = Restaurant.create!(restaurant)

  $r_id = res.id  # get id of newly created

  $j = 1

  begin
  	 dish_data = dishes[$i]
  	 dish_data.merge(restaurants_id: $r_id)
  	 Dish.create(dish_data)
  	 $i += 1
  	 $j += 1
  end until $j <= 5

end


#dishes.each do |dish|
#  Dish.create!(dish)
#end

#restaurant_reviews.each do |restaurant_review|
#  RestaurantReview.create!(restaurant_review)
#end

#dish_reviews.each do |dish_review|
#  DishReview.create!(dish_review)
#end