Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :reviews
  end
  resources :users
  resources :posts
  get 'simple_pages/about'

  get 'simple_pages/contact'
  get 'simple_pages/index'

  root 'simple_pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
