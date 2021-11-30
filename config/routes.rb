Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard', as: :dashboard
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :materials do
    resources :buyings, only: [:show, :new, :create]
  end
  resources :buyings, only: :update
  resources :users, only: [:show] do
    resources :reviews, only: [:new, :create]
  end
  resources :buyings, only: [:destroy] do
    resources :messages, only: [:new, :create]
  end
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
