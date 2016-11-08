Rails.application.routes.draw do
  get 'by_category' => 'storefront#items_by_category'

  get 'all' => 'storefront#all_items'

  resources :products
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'storefront#all_items'
end
