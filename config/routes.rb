Rails.application.routes.draw do
  devise_for :users
  resources :train_details do
    resources :reservations
  end

  get 'search', to: 'train_details#search'
  get 'reservations/reservation_details'

  root 'reservations#index'
end
