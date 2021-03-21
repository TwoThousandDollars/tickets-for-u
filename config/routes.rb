Rails.application.routes.draw do
  get 'games/index'
  get 'games/show'
  resources :teams, :divisions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "divisions#index"
end
