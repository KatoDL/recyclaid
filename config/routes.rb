Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  resources :materials do
    resources :buyings, only: [:new, :create]
  end
=======
  resources :materials
  resources :users, only: [:show]
>>>>>>> master
end
