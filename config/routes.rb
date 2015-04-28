Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show

  root 'pages#home'

  resources :phrases, only: [:new, :create, :edit, :destroy]

  resources :phrase_groups, only: [:new, :create, :edit, :destroy]

  resources :sentences, only: [:new, :create, :edit, :destroy]
end
