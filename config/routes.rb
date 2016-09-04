Rails.application.routes.draw do
  #devise_for :users
  root 'events#index'
  post 'user',   to: 'users#index'
  get   'user',   to: 'users#index'
  get 'events/:id', to: 'events#show'
  get 'events/learning/:id', to: 'events#slide'
  post 'events/:id/comments', to: 'comments#create'
end
