Rails.application.routes.draw do
  resources :accounts
  resources :items
  resources :trades
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/showmethemoney', to: 'accounts#start_websocket_service'
  post 'authenticate', to: 'authentication#authenticate'

end
