Rails.application.routes.draw do
  resources :teams, :divisions, :games, :bookings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "games#index"
end
