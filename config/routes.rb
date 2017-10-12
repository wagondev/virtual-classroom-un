Rails.application.routes.draw do

  resources :subjects
  resources :people
  resources :student_create_groups
  get 'student_create_groups/create_groups'

  resources :team_inscriptions
  resources :group_inscriptions
  resources :teams
  get 'home/index'

  get 'pages/info'
  root to: 'home#index'
  #root to: redirect('Landing%20Page/index')
  resources :tests
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  resources :inscriptions
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #get 'prueba', to:'student_create_groups#create_groups'
end
