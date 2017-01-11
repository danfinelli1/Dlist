Rails.application.routes.draw do


  post '/rate' => 'rater#create', :as => 'rate'
  get 'messages/index'

  get 'messages/new'

  get 'messages/create'

  get 'conversations/index'

  get 'conversations/create'

  get '/', to: 'site#index', as: 'site'

  get '/signup', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  # Edit user routes
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  #Event routes
  get '/events', to: 'event#index', as: 'all_events'
  get '/events/new', to: 'event#new', as: 'new_event'
  get '/events/:id', to: 'event#show', as: 'event'
  get '/events/:id/edit', to: 'event#edit', as: 'edit_event'
  put '/events/:id/edit', to: 'event#update'
  patch '/events/:id/edit', to: 'event#update'
  post '/events', to: 'event#create', as: 'create_event'
  delete '/events/:id', to: 'event#destroy'
  post '/events/:id', to: 'event#add_attender'
  patch '/events/:id', to: 'event#remove_attender'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'

  # Sale Routes
  get '/sales', to: 'sales#index', as: 'sales'
  get '/sales/new', to: 'sales#new', as: 'new_sale'
  post '/sales', to: 'sales#create', as: 'create_sale'
  get '/sales/:id', to: 'sales#show', as: 'sale'
  post '/sales/:id', to: 'sales#purchase'
  patch '/sales/:id', to: 'sales#confirm'
  get '/sales/:id/edit', to: 'sales#edit', as: 'sale_edit'
  patch '/sales/:id/edit', to: 'sales#update'
  delete '/sales/:id', to: 'sales#destroy'

  # Rent Routes
  get '/rents', to: 'rents#index', as: 'all_rents'
  get '/rents/new', to: 'rents#new', as: 'new_rent'
  get '/rents/:id', to: 'rents#show', as: 'rent'
  get '/rents/:id/edit', to: 'rents#edit', as: 'edit_rent'
  put '/rents/:id/edit', to: 'rents#update'
  patch '/rents/:id/edit', to: 'rents#update'
  post '/rents', to: 'rents#create', as: 'create_rent'
  delete '/rents/:id', to: 'rents#destroy'

  #Mailbox Routes
  resources :conversations do
    resources :messages
  end


end
