Rails.application.routes.draw do
  #devise_for :users
  root 'events#index'
  get 'user',   to: 'users#index'
  get 'events/:id', to: 'events#show'
  post 'events/:id/comments', to: 'comments#create'
end
