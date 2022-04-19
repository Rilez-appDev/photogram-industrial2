Rails.application.routes.draw do

  root "photos#index"

  #get "/user/:id" => "users#show", as: :user:
  
  

  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos
  resources :users, only: :show
  devise_for :users

  get "/:username" => "users#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
