Rails.application.routes.draw do
  devise_for :users
  resources :category, only: [:index, :new, :create] do
    resources :records, only: [:index, :new, :create]
  end
  root "category#index"
end
