Rails.application.routes.draw do
  resources :students
  resources :teachers
  resources :rols
  resources :administrators
  resources :inscriptions
  resources :groups
  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
