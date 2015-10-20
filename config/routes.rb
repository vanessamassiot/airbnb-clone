Rails.application.routes.draw do
  devise_for :users
  resources :flats, only: [:new, :create, :index, :show] do
    resources :bookings, only: [:new, :create, :destroy, :show]
  end
  resources :users, only: [:show] do
    resources :bookings, only: [:index]
  end
  resources :users, only: [:show] do
    resources :flats, only: [:index]
  end
end

# rajouter destroy flats & bookings by user id
