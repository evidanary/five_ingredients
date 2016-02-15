Rails.application.routes.draw do
  resources :ingredients
  resources :steps
  resources :recipes
  root to: 'visitors#index'
  devise_for :users
end
