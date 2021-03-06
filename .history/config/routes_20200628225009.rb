Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :items, only: %i[index create show new]
  post '/items/:id', to: 'items#calculate', as: 'calculate'
end
