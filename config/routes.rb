Rails.application.routes.draw do
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/restaurants", to: "restaurants#index"
  get "/restaurant_reviews", to: "restaurant_reviews#index"
  get "/restaurant_reviews/new", to: "restaurant_reviews#new"
  post "/restaurant_reviews", to: "restaurant_reviews#create"
  get "/home", to: "home#index"
  get "/dishes", to: "dishes#index"
  get "/dish_reviews", to: "dish_reviews#index"
  get "dish_reviews/new", to: "dish_reviews#new"
  post "/dish_reviews", to: "dish_reviews#create"
end
