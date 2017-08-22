Rails.application.routes.draw do

  root 'pages#welcome'

  get 'welcome', to: 'pages#welcome'

  get 'admin', to: 'pages#admin'

  get 'employee', to: 'pages#employee'

  get 'profile', to: 'users#profile'

  get 'overview', to: 'users#overview'

  get 'view', to: 'pages#view'

  get 'charts', to: 'pages#charts'

  get 'manage', to: 'pages#manage'

  get 'leaderboard', to: 'pages#leaderboard'

  resources :jobs

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
