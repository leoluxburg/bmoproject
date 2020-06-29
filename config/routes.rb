Rails.application.routes.draw do
  resources :subscriptions
  resources :lectures
  resources :posts
  resources :themes
  resources :topics
  get '/sandbox', to:'pages#sandbox'
  get '/community', to:'pages#community'
  get '/manifest', to:'pages#manifest'
  get '/contact', to:'pages#contact'
  devise_for :users
  root to: 'pages#home'
end
