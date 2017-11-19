Rails.application.routes.draw do
  resources :scores
  resources :assignments
  resources :messages
  resources :meetings
  resources :members
  resources :careers
  resources :inscriptions
  resources :groups
  resources :teams
  resources :subjects
  
  devise_for :users
  get 'home/index'
  get 'users/home'
  
  post 'groups/index'
  post 'groups/new'
  
  post 'teams/index'
  post 'teams/new'
  
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
