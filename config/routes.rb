Rails.application.routes.draw do
  devise_for :users

  
  # root "articles#index"

  get '/', to: 'splash_screen#index', as: 'splash_screen'
  
  get '/categories', to: 'categories#index', as: 'categories_index'
  get '/categories/:category_id', to: 'categories#show', as: 'categories_show'

end
