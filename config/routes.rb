Rails.application.routes.draw do
  
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  resources :posts

  root "posts#index"

  # Defines the root path route ("/")
  # root "articles#index"

  get '/rails/info/routes' => 'routes'

end