Rails.application.routes.draw do

  root 'home#index'
  get  'menu' => 'home#menu'
  get  'contact_us' => 'home#contact_us'

end
