Rails.application.routes.draw do
  root 'home#index'
  resources :user_banks
  resources :type_documents
  resources :type_users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
