Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do 
      resources :users
      resources :bike_stations #, only: [:index, :show]
      resources :check_ins
      resources :favorite_stations
      resources :reviews
    end
  end
  
end
