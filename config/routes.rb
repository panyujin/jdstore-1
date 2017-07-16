Rails.application.routes.draw do
  namespace :admin do
    resources :products
  end

  devise_for :users

  resources :products do
    member do
      post :add_to_cart
    end
  end
  #root 'welcome#index'
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
