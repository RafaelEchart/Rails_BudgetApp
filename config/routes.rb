Rails.application.routes.draw do
  devise_for :users

  
  root "splash_screen#index"

  get '/', to: 'splash_screen#index', as: 'splash_screen'
  
  get '/categories', to: 'categories#index', as: 'categories_index'
  get '/categories/new', to: 'categories#new', as: 'categories_new'
  post '/categories', to: 'categories#post', as: 'categories_post'
  
  get '/categories/:category_id/transactions', to: 'transactions#index', as: 'transactions_index'
  get '/categories/:category_id/transactions/new', to: 'transactions#create', as: 'transactions_create'
  post '/categories/:category_id/transactions', to: 'transactions#post', as: 'transactions_post'

end
