Rails.application.routes.draw do
  get 'passanger/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :flights
  resources :bookings

  root "flights#index"
end
