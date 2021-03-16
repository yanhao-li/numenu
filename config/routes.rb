Rails.application.routes.draw do
  root 'home#index', as: "home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :restaurants, only: [:index, :show], shallow: true do
    resources :reviews, :controller => "restaurant_reviews"
    resources :dishes, only: [:index] do
      resources :reviews, :controller => "dish_reviews"
    end
  end
end
