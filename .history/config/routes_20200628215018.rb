Rails.application.routes.draw do
  get 'items/index'
  get 'items/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items, only: %i[index create show]
end
