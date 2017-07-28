Rails.application.routes.draw do

  root 'pages#welcome'

  get 'pages/welcome'

  get 'profile', to: 'users#profile'

  get 'overview', to: 'users#overview'

  resources :jobs

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
