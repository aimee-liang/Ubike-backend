Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :bike_stations
  resources :check_ins
  resources :favorite_stations
  resources :reviews
end
