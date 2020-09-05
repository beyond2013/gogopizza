Rails.application.routes.draw do
  resources :products
  get 'welcome/index'
  root to: 'welcome#index'

  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
