Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  resources :pools, only: [:index, :destroy, :new, :create, :edit, :update]
  resources :trainings, only: [:new, :create]

  resources :programs, only: [:new, :create, :edit, :update] do
    resources :cards, only: [:index, :show, :new, :create, :edit, :update]  
  end
end