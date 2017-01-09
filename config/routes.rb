Rails.application.routes.draw do


  get '/', to: 'site#index', as: 'site'

  get '/signup', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  # Edit user routes
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  get '/events', to: 'event#index', as: 'all_events'
  get '/events/new', to: 'event#new', as: 'new_event'
  get '/events/:id', to: 'event#show', as: 'event'
  get '/events/:id/edit', to: 'event#edit', as: 'edit_event'
  put '/events/:id/edit', to: 'event#update'
  patch '/events/:id/edit', to: 'event#update'
  post '/events', to: 'event#create', as: 'create_event'
  delete '/events/:id', to: 'event#destroy'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'


  # Sale Routes
  get '/sales', to: 'sales#index', as: 'sales'
  get '/sales/new', to: 'sales#new', as: 'new_sale'
  post '/sales', to: 'sales#create', as: 'create_sale'
  get '/sales/:id', to: 'sales#show', as: 'sale'
  delete '/sales/:id', to: 'sales#destroy'

end
