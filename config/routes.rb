Rails.application.routes.draw do
  devise_for :users
  resources :favorite_jokes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resource :home, only: :index
  # Defines the root path route ("/")
  root "home#index"
end
