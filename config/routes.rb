Rails.application.routes.draw do
  resources :inscriptions
  resources :groups
  resources :teams
  resources :subjects
  devise_for :users
  get 'home/index'
  
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
