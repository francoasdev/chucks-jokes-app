Rails.application.routes.draw do
  devise_for :users
  resources :favorite_jokes, only: %i[index new create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "favorite_jokes#index"
end
