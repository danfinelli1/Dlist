Rails.application.routes.draw do


  get '/', to: 'site#index', as: 'site'

  get '/signup', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

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

end
