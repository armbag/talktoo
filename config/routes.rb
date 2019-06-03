Rails.application.routes.draw do

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
    resources :meetings, only: [:create, :new, :destroy, :index, :show] do
      resources :slots, only: [:update]
      resources :payments, only: [:new, :create]
    end
    resources :reviews, only: [:index, :create, :new, :update, :edit]
    resources :tagging, only: [:new, :create, :destroy]
    resources :slots, only: [:index, :create, :destroy]
    resources :chat_rooms, only: [:create, :new]
  end

end
