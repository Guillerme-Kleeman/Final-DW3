Rails.application.routes.draw do
  root to: 'productos#index'
  devise_for :usuarios
  get 'productos', to: 'productos#index'
  get 'productos/new', as: 'new_producto'
  get 'productos/:id/edit', to: 'productos#edit', as: 'edit_producto'
  post 'productos/create', to: 'productos#create', as: 'create_producto'
  patch 'productos/update', to: 'productos#update', as: 'update_producto'
  delete 'productos/:id/destroy', to: 'productos#destroy', as: 'destroy_producto'
  resources :rubros
  resources :marcas
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
