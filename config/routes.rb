Rails.application.routes.draw do
  get 'book_comments/create'
  get 'book_comments/destroy'
  root 'home#top'
  get 'home/about' => 'home#about', as: 'home_about'
  delete '/books' => 'books#index'
  devise_for :users ,controllers: {
  :registrations => 'users/registrations'}
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
  	resources :book_comments, only: [:create, :destroy] #resources複数形にすることでidが付与される
  	resource :favorites, only: [:create, :destroy]
  end
  resources :relationships, only: [:create, :destroy]
  get 'users/:id/followings' => 'relationships#followings_index', as: 'followings'
  get 'users/:id/followers' => 'relationships#followers_index', as: 'followers'
  get '/search' => 'search#search', as: 'search'
end