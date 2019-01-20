# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
root to: "home#index"
resources :sessions, only: %i[new create]
resources :users, only: %i[new create index show]
delete 'sessions', to: 'sessions#destroy', as: :session
