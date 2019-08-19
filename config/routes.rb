Rails.application.routes.draw do
  get '/persist', to: 'tokens#persist'

  resources :users
  
  resources :tokens, only: [:create]
end
