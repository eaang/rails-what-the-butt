Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/items/:id', to: 'items#calculate', as: 'calculate'
  resources :items, only: %i[index create show new]
end
