Rails.application.routes.draw do
  root 'products#index'
  resources :products, only: [:index, :show] do
    resources :comments, only: [:create, :new]
  end
end
