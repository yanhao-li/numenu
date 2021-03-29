require 'factory_bot_rails'

FactoryBot.define do
  
  #factory :restaurant do
  #	name {'A Fake Name'} # default values
  #end

  factory :dish do 
  	dish_name       {'123-4567'}
    price 			{10.00}
    description     {'Test description'}
  	association :restaurant
  end

end