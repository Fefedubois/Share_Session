Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :spots do
    get 'top'
  end
  resources :favorites, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
end
