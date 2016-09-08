Rails.application.routes.draw do
  post '/rooms/signup' => 'rooms#signup'
  resources :members

  resources :members
  get 'sessions/new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :rooms
  #post '/rooms/:id/signup', to: 'rooms#signup'

end
