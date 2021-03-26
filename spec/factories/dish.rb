require 'factory_bot_rails'

FactoryBot.define do
  
  factory :dish do
    dish_name       {'123-4567'}
    price 			{10.00}
    description     {'Test description'}
    dish_id { FactoryBot.create(:restaurant).id }
  end
end