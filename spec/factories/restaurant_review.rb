require 'factory_bot_rails'

FactoryBot.define do
  
  factory :restaurant_review do
    review {'A Fake Restaurant Review'} # default values
  end
end