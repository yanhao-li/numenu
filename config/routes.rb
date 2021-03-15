Rails.application.routes.draw do
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/restaurants", to: "restaurants#index"
  get "/restaurant_review", to: "restaurant_reviews#index"
end
