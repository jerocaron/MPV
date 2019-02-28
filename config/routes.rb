Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bikes, only: [ :index, :create, :new, :show ] do
    resources :rents, only: [:new, :create, :index]
  end
  resources :profils, only: [ :create, :new, :edit, :update ]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
