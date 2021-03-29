require 'factory_bot_rails'

FactoryBot.define do
  
  factory :user do
    first_name {'Fake first name'} # default values
    last_name {'Fake last name'} 
    email_address {'fake@gmail.com'}
  end
end