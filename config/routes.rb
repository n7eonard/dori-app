Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :pools, only: [:index, :show]
  resources :trainings, only: [:new, :create]

  resources :programs, only: [:new, :create, :edit, :update] do
    resources :cards, only: [:index, :show, :new, :create, :edit, :update]
  end
end
