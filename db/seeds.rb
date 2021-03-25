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
		:description => 'choice of one side',
		:restaurant => 'Community Food & Juice',
	},
	{
		:dish_name => 'Crispy Wild Organic Salmon',
		:price => 22.00, 
		:description => 'pan-seared with spring ragout of shiitakes, sugar snap peas, leeks & asparagus, with horseradish miso glaze', 
		:restaurant => 'Community Food & Juice'
	},
	{
		:dish_name => 'House Ravioli',
		:price => 18.00, 
		:description => 'truffled spring pea filling, lemon butter sauce, satur farms micro greens',
		:restaurant => 'Community Food & Juice'
	},
	{
		:dish_name => 'Seared Sea Scallops',
		:price => 24.00, 
		:description => 'jumbo Chatham scallops over fresh summer corn pudding, with tomato concasse, sugar snap peas, and herb pan juices',
		:restaurant => 'Community Food & Juice'
	},
	{
		:dish_name => 'Grilled Salmon Burger',
		:price => 16.00, 
		:description => 'made in house with wild organic salmon, served with avocado, arugula, wasabi mayo, and a side of dressed local greens',
		:restaurant => 'Community Food & Juice'
	},
	# Junzi Kitchen
	{
		:dish_name => 'firecracker chicken rice',
		:price => 9.99, 
		:description => '(spicy) white rice, firecracker chicken, stir-fried cabbage, pickled red cabbage, crispy shallots (add soy egg +1.5)',
		:restaurant => 'Junzi Kitchen'
	},
	{
		:dish_name => 'cantonese bbq chicken rice',
		:price => 11.99, 
		:description => 'white rice, cantonese bbq chicken, roasted yams, stir-fried cabbage, ginger scallion sauce, scallions',
		:restaurant => 'Junzi Kitchen'
	},
	{
		:dish_name => 'sichuan grilled pork rice',
		:price => 11.99, 
		:description => '(spicy) brown rice, sichuan grilled pork, bean sprouts, spicy pickled chayote, cilantro, chili oil',
		:restaurant => 'Junzi Kitchen'
	},
	{
		:dish_name => 'spicy sesame chicken noodles',
		:price => 12.79, 
		:description => 'spring noodles, furu sesame sauce, cantonese bbq chicken, bean sprouts, cucumbers, garlic chili, scallions',
		:restaurant => 'Junzi Kitchen'
	},
	{
		:dish_name => 'sesame tofu noodles',
		:price => 11.29, 
		:description => '(vegan) spring noodles, furu sesame sauce, griddled tofu, bean sprouts, cucumbers, cilantro',
		:restaurant => 'Junzi Kitchen'
	},
	# Massawa
	{
		:dish_name => 'SHIRO',
		:price => 13.60, 
		:description => 'Puréed split peas cooked with herbs and a hint of spice',
		:restaurant => 'Massawa'
	},
	{
		:dish_name => 'TSEBHI BEGHE',
		:price => 14.50, 
		:description => 'Spicy chunks simmered within a thick sauce of berbere',
		:restaurant => 'Massawa'
	},
	{
		:dish_name => 'TEBSI',
		:price => 14.50, 
		:description => 'Cubes of beef sautéed w/ onions, tomatoes, and jalapeno peppers (served mild or spicy)',
		:restaurant => 'Massawa'
	},
	{
		:dish_name => 'ALITCHA BEGHE',
		:price => 14.50, 
		:description => 'Mild lamb stew of curry, rosemary, and puréed onions',
		:restaurant => 'Massawa'
	},
	{
		:dish_name => 'ZEGENI',
		:price => 14, 
		:description => 'Savory beef stew simmered w/ berbere and onions',
		:restaurant => 'Massawa'
	},
	# Kikoo Sushi
	{
		:dish_name => 'Chirashi Bowl',
		:price => 18.00, 
		:description => 'Served with assorted sashimi on sushi rice.',
		:restaurant => 'Kikoo Sushi'
	},
	{
		:dish_name => 'Poke Bowl',
		:price => 18.00, 
		:description => 'Served Hawaiian style sashimi over sushi rice.',
		:restaurant => 'Kikoo Sushi'
	},
	{
		:dish_name => 'Chicken Teriyaki Bowl',
		:price => 15.00, 
		:description => 'Served with grill chicken with teriyaki sauce and steam broccoli over rice in bowl.',
		:restaurant => 'Kikoo Sushi'
	},
	{
		:dish_name => 'Kobe Beef Sushi',
		:price => 60.00, 
		:description => 'Served with 6 pieces Kobe beef sushi and 1 Kobe beef roll.',
		:restaurant => 'Kikoo Sushi'
	},
	{
		:dish_name => 'Gyu Bowl',
		:price => 15.00, 
		:description => 'Served with sauteed beef with onion over rice in bowl.',
		:restaurant => 'Kikoo Sushi'
	},
	# Elysian Fields
	{
		:dish_name => 'Chicken Platter',
		:price => 16.75, 
		:description => 'generous cuts of natural chicken breast served with fries and basmati rice',
		:restaurant => 'Elysian Fields'
	},
	{
		:dish_name => 'Pork Platter',
		:price => 16.75, 
		:description => 'cuts of center pork served with fries and basmati rice',
		:restaurant => 'Elysian Fields'
	},
	{
		:dish_name => 'Beef Kebab Platter',
		:price => 17.75, 
		:description => 'hand rolled seasoned ground beef over basmati rice, tomato herbed sauce, fries',
		:restaurant => 'Elysian Fields'
	},
	{
		:dish_name => 'Grilled Shrimp Platter',
		:price => 17.75, 
		:description => 'juicy and tender grilled marinated shrimp served with rice and basmati rice',
		:restaurant => 'Elysian Fields'
	},
	{
		:dish_name => 'Gyro Giaourtlou Platter',
		:price => 14.75, 
		:description => 'gyro with paprika yogurt sauce, tomato, onions, fries',
		:restaurant => 'Elysian Fields'
	},
	# Symposium
	{
		:dish_name => 'Chicken Ala\'Greco',
		:price => 14.95, 
		:description => 'Broiled, marinated 1/2 chicken.',
		:restaurant => 'Symposium'
	},
	{
		:dish_name => 'Pork Souvlaki Platter',
		:price => 15.95, 
		:description => 'Skewer served with fries, tzatziki, pita and Greek salad.',
		:restaurant => 'Symposium'
	},
	{
		:dish_name => 'Lamb Exohiko',
		:price => 21.95, 
		:description => 'Baked tender lamb in phyllo dough with carrots, peas and artichokes.',
		:restaurant => 'Symposium'
	},
	{
		:dish_name => 'Beef Gyro Platter',
		:price => 11.95, 
		:description => 'Strips served with toasted pita, Greek salad and tzatziki',
		:restaurant => 'Symposium'
	},
	{
		:dish_name => 'Shrimp Santorini',
		:price => 23.95, 
		:description => '',
		:restaurant => 'Symposium'
	},
	# Max Soha
	{
		:dish_name => 'Chicken Parmigiana',
		:price => 18.95, 
		:description => 'breaded chicken breast topped with tomato sauce, melted mozzarella, basil & a side of spaghetti and tomato sauce',
		:restaurant => 'Max Soha'
	},
	{
		:dish_name => 'Striped Sea Bass Livornese',
		:price => 21.95, 
		:description => 'seared striped sea bass filet with shrimp, capers, black, olvies, chopped tomatoes & a side of sauteed brussel sprouts',
		:restaurant => 'Max Soha'
	},
	{
		:dish_name => 'Grilled New York Strip Steak',
		:price => 24.95, 
		:description => 'mushrooms, cracked black pepper, red wine sauce & a side of roasted potatoes',
		:restaurant => 'Max Soha'
	},
	{
		:dish_name => 'Chiken Marsala',
		:price => 18.95, 
		:description => 'mushrooms, Marsala wine & a side of mashed potatoes',
		:restaurant => 'Max Soha'
	},
	{
		:dish_name => 'Salmone Alla Griglia',
		:price => 20.95, 
		:description => 'grilled salmon filet with lemon, caper-butter sauce & a side of sauteed spinach',
		:restaurant => 'Max Soha'
	},
	# Pisticci
	{
		:dish_name => 'Baby Lettuce Salad',
		:price => 13.00, 
		:description => 'tender spring mix with cherry tomatoes and lightly dressed creamy balsamic',
		:restaurant => 'Pisticci'
	},
	{
		:dish_name => 'Vegetable Ceci',
		:price => 11.00, 
		:description => 'Grilled Portobello, zucchini, & squash medallions topped with chickpea puree and fresh mozz di bufala',
		:restaurant => 'Pisticci'
	},
	{
		:dish_name => 'Penne Pisticci',
		:price => 12.79, 
		:description => 'red & yellow vine tomatoes with melted fresh mozzarella',
		:restaurant => 'Pisticci'
	},
	{
		:dish_name => 'Grilled Salmon Filet',
		:price => 23.00, 
		:description => 'we’ll cook your filet on the rare side so you can bring it to temperature at home. served with oven roasted tomatoes',
		:restaurant => 'Pisticci'
	},
	{
		:dish_name => 'Rigatoni alla Vodka',
		:price => 19.00, 
		:description => 'vodka, cream, tomato, parmigiano and a little bite of spice',
		:restaurant => 'Pisticci'
	},
]


restaurant_reviews = [
	{
		:review => 'I hated it here. Too loud.', :rating => 1, 
		:restaurant => 'Community Food & Juice',
		:user_email => 'sebastien_smith@gmail.com'
	},
	{
		:review => 'My favorite restaurant. I love their firecracker chicken rice.', :rating => 5, 
		:restaurant => 'Junzi Kitchen',
		:user_email => 'sebastien_smith@gmail.com'
	},
	{
		:review => 'Decent place.', :rating => 3, 
		:restaurant => 'Massawa',
		:user_email => 'sebastien_smith@gmail.com'
	},
	{
		:review => 'The sushi here is great! Always kind service.', :rating => 5,
		:restaurant => 'Kikoo Sushi',
		:user_email => 'sebastien_smith@gmail.com'
	},
	{
		:review => 'The restaurant was dirty.', :rating => 2,
		:restaurant => 'Elysian Fields',
		:user_email => 'joe_miller@gmail.com'
	},
	{
		:review => 'Great restaurant. I highly recommend coming here at least once.',
		:rating => 5,
		:restaurant => 'Symposium',
		:user_email => 'joe_miller@gmail.com'
	},
	{
		:review => 'Test bad review', :rating => 1,
		:restaurant => 'Max Soha',
		:user_email => 'joe_miller@gmail.com'
	},
	{
		:review => 'Test okay review', :rating => 3,
		:restaurant => 'Pisticci',
		:user_email => 'joe_miller@gmail.com'
	},
]


dish_reviews = [
	{
		:review => 'I liked it a lot.', :rating => 4,
		:dish => 'Beef Gyro Platter',
		:user_email => 'joe_miller@gmail.com'
	},
	{
		:review => 'The bass was undercooked.', :rating => 2,
		:dish => 'Striped Sea Bass Livornese',
		:user_email => 'joe_miller@gmail.com'
	},
	{
		:review => 'I really like the lamb here.', :rating => 4,
		:dish => 'ALITCHA BEGHE',
		:user_email => 'sebastien_smith@gmail.com'
	},
	{
		:review => 'Disgusting.', :rating => 1,
		:dish => 'Baby Lettuce Salad',
		:user_email => 'joe_miller@gmail.com'
	},
	{
		:review => 'One of my favorite dishes from here!', :rating => 5,
		:dish => 'Seared Sea Scallops',
		:user_email => 'sebastien_smith@gmail.com'
	},
]


# seed users table
users.each do |user|
  User.create!(user)

end

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)

end

# belongs to Restaurant
dishes.each do |dish|
	
	res = dish[:restaurant]
	restaurant = Restaurant.find_by(name: res)
	restaurant.dishes.create(dish.except!(:restaurant))

end

# belongs to User and Restaurant
restaurant_reviews.each do |restaurant_review|
  
  u_email = restaurant_review[:user_email]
  res = restaurant_review[:restaurant]

  user_id = User.find_by(email_address: u_email).id
  restaurant = Restaurant.find_by(name: res)

  review = restaurant.restaurant_reviews.build(restaurant_review.except!(:restaurant, :user_email))

  review.user_id = user_id
  review.save!

end

# belongs to User and Dish
dish_reviews.each do |dish_review|
  
  u_email = dish_review[:user_email]
  d = dish_review[:dish]

  user_id = User.find_by(email_address: u_email).id
  dish = Dish.find_by(dish_name: d)

  review = dish.dish_reviews.build(dish_review.except!(:dish, :user_email))

  review.user_id = user_id

  review.save!

end