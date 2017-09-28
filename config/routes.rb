Rails.application.routes.draw do

  get 'home/index'

  resources :workteams
  get 'pages/info'
  root to: 'home#index'
  #root to: redirect('Landing%20Page/index')
  resources :tests
  devise_for :users
  resources :students
  resources :teachers
  resources :rols
  resources :administrators
  resources :inscriptions
  resources :groups
  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
