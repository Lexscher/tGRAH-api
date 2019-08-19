Rails.application.routes.draw do
  resources :tasks
  resources :lists
  resources :projects
  get '/persist', to: 'tokens#persist'

  resources :users
  
  resources :tokens, only: [:create]
end
