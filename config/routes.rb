Rails.application.routes.draw do
  devise_for :users
  resources :train_details do
    resources :reservations, only: [:new,:create]
  end

  get 'search', to: 'train_details#search'
  root 'reservations#index'
end
