Rails.application.routes.draw do
  # Add this to generate /api/URI
  # See https://www.youtube.com/watch?v=36M2BSA2LYk
  # namespace :api, defaults: {format: :json} do
  resources :ingredients
  resources :steps
  resources :recipes
  root to: 'visitors#index'
#  devise_for :users
  devise_for :users,
    :path => '',
    :path_names => {:sign_in => 'login', :sign_out => 'logout', :sign_up => 'signup'}
  # end
end
