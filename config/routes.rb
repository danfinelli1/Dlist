Rails.application.routes.draw do


  get '/', to: 'site#index', as: 'site'

  get '/signup', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  # Edit user routes
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'


  # Sell Routes
  get '/sales', to: 'sales#index', as: 'sales'
  get '/sales/new', to: 'sales#new', as: 'new_sale' 

end
