Rails.application.routes.draw do
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # list of restaurants
  get "/restaurants", to: "restaurants#index"

  # details of restaurant, include dishes
  get "/restaurants/:id", to: "restaurants#show", as: "restaurant"

  # resturant reviews
  get "/restaurants/:id/reviews", to: "restaurant_reviews#index", as: "restaurant_reviews"
  get "/restaurants/:id/reviews/new", to: "restaurant_reviews#new", as: "new_restaurant_reviews"
  post "/restaurants/:id/reviews", to: "restaurant_reviews#create"

  # dishes reviews
  get "/dishes/:id/reviews", to: "dish_reviews#index", as: "dish_reviews"
  get "/dishes/:id/reviews/new", to: "dish_reviews#new"
  post "/dishes/:id/reviews", to: "dish_reviews#create"
end
