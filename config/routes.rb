# config/routes.rb
Rails.application.routes.draw do
  devise_for :users
  root to: 'users#show'
  resources :idols do
    resources :images, only: [:new, :create, :show]
    resources :chats, only: [:new, :create, :show]
  end
end
