Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :users, only: [:show, :index, :edit, :update]


  get "home/about" => "homes#about"
  root to: 'homes#top'




end