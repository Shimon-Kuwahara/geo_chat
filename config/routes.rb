Rails.application.routes.draw do
  get 'users/show'
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }

  root to: "home#index"
  resources :chats, only: [:show, :create]
  resources :users
  resources :rooms
end
