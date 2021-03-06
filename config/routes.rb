Rails.application.routes.draw do
  get 'intervention/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Blazer::Engine, at: "blazer"
  devise_for :users
  root 'home#index'
  resources :home
  resources :quotes
  resources :interventions
  get 'quote', to: 'quotes#new'
  get 'commercial', to: 'home#commercial'
  get 'residential', to: 'home#residential'
  get 'map', to: 'map#index'
  get 'dropbox/auth' => 'dropbox#auth'
  get 'dropbox/auth_callback' => 'dropbox#auth_callback'
  get 'intervention', to: 'interventions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end