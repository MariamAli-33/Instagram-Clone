# frozen_string_literal: true

# App routes
Rails.application.routes.draw do
  root 'pages#home'
  get 'ajax/:action', to: 'ajax#:action', defaults: { format: 'json' }
  devise_for :users

  resources :users do
    resources :relationships, only: %i[create index]
    resources :stories, only: [:index]
    resources :posts, only: [:index]
  end
  resources :relationships, only: [:destroy]
  get 'search', to: 'users#search'
  resources :posts do
    resources :photos, only: [:create]
    resources :likes, only: %i[create destroy], shallow: true
    resources :comments, only: %i[create edit update destroy]
  end
  resources :stories do
    resources :photos, only: [:create]
  end
  get '*path', to: 'application#routing_error'
end
