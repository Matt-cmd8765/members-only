Rails.application.routes.draw do
  
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  devise_scope :user do
    root 'users/sessions#new'
    get 'login', to: 'devise/sessions#new'
  end
  # Defines the root path route ("/")
  # root "articles#index"

  get '/rails/info/routes' => 'routes'

end