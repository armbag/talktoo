Rails.application.routes.draw do

  get 'messages/create'
  get 'users/show'
  devise_for :users
  root to: 'pages#home'

  resources :chat_rooms, only: :show do
    resources :messages, only: :create
  end

  resources :users, only: [:show] do
    resources :reviews, only: [:index, :create, :new, :update, :edit]
  end
  resources :meetings, only: [:index, :create, :new, :update, :edit, :delete]
  resources :slots, only: [:index, :create, :new, :update, :edit]

end

