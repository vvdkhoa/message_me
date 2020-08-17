Rails.application.routes.draw do
  get 'messages/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'chatroom#index'
  get 'login', to: 'sessions#new' # When goto login page
  post 'login', to: 'sessions#create' # When push Login button
  delete 'logout', to: 'sessions#destroy'
  post 'message', to: 'messages#create'
end
