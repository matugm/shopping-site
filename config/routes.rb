Rails.application.routes.draw do
  devise_for :users

  root 'products#index'
  resources :products, only: [:index, :show] do
    resources :comments, only: [:create, :new]
  end

  post '/cart/add/:product_id' => 'shopping_cart#add', as: 'shopping_cart_add'
  post '/cart/delete/:product_id' => 'shopping_cart#delete', as: 'shopping_cart_delete'

  get  '/cart' => 'shopping_cart#index', as: 'view_cart'
end
