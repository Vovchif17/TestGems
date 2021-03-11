Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/microposts', to: 'microposts#show'
  resource :users, only: [:show]
  resource :microposts, only: [:create, :destroy, :show]
end
