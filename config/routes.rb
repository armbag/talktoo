Rails.application.routes.draw do

  mount ActionCable.server => "/cable"

  get 'videos/show'
  get 'messages/create'
  # get 'users/show'
  devise_for :users, controllers: {
    omniauthcallbacks: 'users/omniauth_callbacks'
  }

  root to: 'pages#home'

  resources :chat_rooms, only: :show  do
    resources :messages, only: :create
  end

  resources :users, only: [:show, :index] do
    resources :videos, only: [:show]
    resources :meetings, only: [:destroy, :index, :show] do
      resources :slots, only: [:update]
    end
    resources :reviews, only: [:index, :create, :new, :update, :edit]
    resources :tagging, only: [:new, :create, :destroy]
    resources :slots, only: [:index, :create, :destroy]
    resources :chat_rooms, only: [:create, :new]
  end

  resources :meetings, only: [:create, :new] do
    resources :payments, only: [:new, :create]
  end



end
