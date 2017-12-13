Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  resource :profile, only: [:show] do
    get :edit_to_google
  end

  resources :pools, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :trainings, only: [:new, :create]

  resources :programs, only: [:new, :create, :edit, :update] do
    get :send_to_google
    get :update_to_google
    resources :cards, only: [:index, :show, :new, :create, :edit, :update] do
    end
  end
end
