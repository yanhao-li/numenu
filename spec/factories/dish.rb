require 'factory_bot_rails'

FactoryBot.define do
  
  factory :dish do
    dish_name {'A Fake Name'} # default values
  end
end