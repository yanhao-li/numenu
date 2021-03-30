Rails.application.routes.draw do
  root to: 'home#index', as: "home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :home, only: [:index]
  resources :restaurants, only: [:index, :show], shallow: true do
  	resources :reviews, :controller => "restaurant_reviews"
    resources :dishes, only: [:index] do
    	resources :reviews, :controller => "dish_reviews"
    end
  end

  get '/users', to: 'users#index'
  post '/users/login', to: 'users#login'
  post '/users/signup', to: 'users#signup'
  get '/users/profile', to: 'users#profile'
  get '/users/logout', to: 'users#logout'
  get '/scan', to: 'home#scan'

end


