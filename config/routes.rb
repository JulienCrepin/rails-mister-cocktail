Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new,:create]
  end
  resources :doses, only: [:destroy]
  # get 'doses/index' to: 'doses#index'

  # get 'doses/show' to: 'doses#show'

  # get 'doses/new' to: 'doses#new'

  # post 'doses/create' to: 'doses#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
