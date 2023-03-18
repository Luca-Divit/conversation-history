Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :projects do
    resources :comments, only: :create
  end
  resources :comments, only: %i[destroy edit update]
end
