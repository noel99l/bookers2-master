Rails.application.routes.draw do
  root 'home#top'
  get 'home/about' => 'home#about', as: 'home_about'
  delete '/books' => 'books#index'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
end