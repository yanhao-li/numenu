require 'factory_bot_rails'

FactoryBot.define do
  
  factory :dish_review do
    review          {'A Fake Review'} # default values
    rating          {3}
    dish_id { FactoryBot.create(:dish).id }
    user_id { FactoryBot.create(:user).id }
  end
end