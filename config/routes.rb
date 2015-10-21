Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :flats, only: [:index, :show] do
    resources :bookings, only: [:new, :create, :show, :edit]
  end

  namespace :account do
    resource :dashboard,  only: [:show]
    resource :profile,    only: [:edit, :update]

    resources :bookings,  only: [:index, :show]
    resources :flats,     only: [:index, :show, :new, :create]
  end
end
