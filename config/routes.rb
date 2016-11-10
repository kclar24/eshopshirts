Rails.application.routes.draw do


  resources :line_items
  resources :orders
  devise_for :users
  get 'by_category' => 'storefront#items_by_category'

  get 'all' => 'storefront#all_items'
  post 'add_to_cart' => 'cart#add_to_cart'
  get 'view_cart' => 'cart#view_cart'
  get 'checkout' => 'cart#checkout'

  resources :products
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'storefront#all_items'
end
