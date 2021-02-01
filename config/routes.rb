Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  resources :profiles, only: [:show, :new, :update, :edit, :create]
end
