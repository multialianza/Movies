Rails.application.routes.draw do
  #get 'welcome/index'
  get "welcome", to: "welcome#index"
  resources :documentaryfilms, only: [:index, :create, :new]

  resources :movies, only: [:index, :create, :new]

  resources :series, only: [:index, :create, :new]


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "welcome#index"
end
