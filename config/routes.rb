Rails.application.routes.draw do
  get 'program/new'

  get 'program/create'

  get 'program/edit'

  devise_for :users
  root to: 'pages#home'

  resources :cards, only: [:index, :show, :new, :create, :edit, :update]
  resources :pools, only: [:index, :show]
  resources :programs, only: [:new, :create]
  resources :trainings, only: [:new, :create]
end
