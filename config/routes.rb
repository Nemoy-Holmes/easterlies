Rails.application.routes.draw do
  resources :posts
  devise_for :users
  resources :products do
    resources :comments
  end
  resources :users
  resources :products
  get 'simple_pages/about'

  get 'simple_pages/contact'
  get 'simple_pages/index'

  root 'simple_pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
