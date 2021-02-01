Rails.application.routes.draw do
  devise_for :users
  resources :profiles, only: [:show, :new, :update, :edit, :create]
  root "items#index"
  resources :items do
    resources :orders, only: [:create, :destroy, :index]
    resources :comments, only: [:create]
    collection do
      get 'search'
    end
  end
end
