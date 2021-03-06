Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "items#index"
  resources :items, only: %i[index create show new]
  get '/items/:id', to: 'items#calculate', as: 'calculate'
end
