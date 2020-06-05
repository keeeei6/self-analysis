Rails.application.routes.draw do
  devise_for :users
  root "groups#index"
  resources :users, only: [:edit, :update]
  resources :questions, only: [:index, :new]
end
