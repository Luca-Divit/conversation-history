Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :projects do
    resources :comments, only: %i[create destroy]
  end
end
