Rails.application.routes.draw do
  resources :steps
  resources :recipes
  resources :ingredients
  root to: 'visitors#index'
  devise_for :users
end
