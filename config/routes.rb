Rails.application.routes.draw do
  resources :spices, only: [:index, :create, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/spices', to: 'spices#index'

  # post '/spices/:id', to: 'spices#create'

end
