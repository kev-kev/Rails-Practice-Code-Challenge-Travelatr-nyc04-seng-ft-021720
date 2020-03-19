Rails.application.routes.draw do
  # resources :bloggers, only: [:new, :create, :update, :edit, :destroy]
  # resources :posts, only: [:new, :create, :update, :edit, :destroy]
  # resources :destinations, only: [:new, :create, :update, :edit, :destroy]
  resources :bloggers, :posts, :destinations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
