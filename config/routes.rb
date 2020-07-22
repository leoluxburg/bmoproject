Rails.application.routes.draw do
  resources :bmos
  resources :subscriptions
  resources :lectures
  resources :posts
  resources :themes
  resources :topics
  get '/sandbox', to:'pages#sandbox'
  get '/ig', to:'pages#ig'
  get '/community', to:'pages#community'
  get '/manifest', to:'pages#manifest'
  get '/links', to:'pages#links'
  get '/landofooo', to:'pages#dashboard'
  get '/all_lectures', to: 'pages#all_lectures'
  get '/posts_topics', to: 'pages#posts_topics'
  get '/contact', to:'pages#contact'
  devise_for :users
  root to: 'pages#home'
end
