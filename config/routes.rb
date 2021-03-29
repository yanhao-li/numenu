Rails.application.routes.draw do
  get 'home/index'
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :home, only: [:index]
  resources :restaurants, only: [:index, :show], shallow: true do
  	resources :reviews, :controller => "restaurant_reviews"
    resources :dishes, only: [:index] do
    	resources :reviews, :controller => "dish_reviews"
    end
  end
end


