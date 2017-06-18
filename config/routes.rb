Rails.application.routes.draw do

  resources :orders
  resources :food_items

  root 'home#index'
  get  'menu' => 'home#menu'
  get  'contact_us' => 'home#contact_us'

end
