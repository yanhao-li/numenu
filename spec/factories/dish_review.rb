require 'factory_bot_rails'

FactoryBot.define do
  
  factory :dish_review do
    review          {'A Fake Review'} # default values
    rating          {3}
    association     :user
    association     :dish
  end
end