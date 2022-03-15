Rails.application.routes.draw do
  
  # root "articles#index"

  get '/', to: 'splash_screen#index', as: 'splash_screen'
end
