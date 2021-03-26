require 'factory_bot_rails'

FactoryBot.define do
  
  factory :dish_review do
    review          {'A Fake Review'} # default values
    rating          {3}
    user            { build(:user) }
    dish            { build(:dish) }
  end
end