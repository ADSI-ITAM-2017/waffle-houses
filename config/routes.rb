Rails.application.routes.draw do
  resources :addresses
  resources :tenants
  resources :lessors
  resources :properties
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
