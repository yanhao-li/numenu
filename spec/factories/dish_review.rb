require 'factory_bot_rails'

FactoryBot.define do
  
  factory :dish_review do
    review {'A Fake Review'} # default values
  end
end