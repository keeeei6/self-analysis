Rails.application.routes.draw do
  devise_for :users
  root "groups#index"
  resources :users, only: [:edit, :update]
  resources :groups, only: :index do
    resources :questions, only: [:index, :show] do
      resources :answers, only: [:new, :create, :edit, :update]
    end
  end
end