Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'works#root'
  # get '/login', to: 'sessions#login_form', as: 'login'
  # post '/login', to: 'sessions#login'
  # post '/logout', to: 'sessions#logout', as: 'logout'

  get '/auth/:provider/callback', to: 'sessions#login'
  get '/logout', to: 'sessions#logout', as: 'logout'
  post '/logout', to: 'sessions#logout'
  #how come we did not need a post method in class but i need one here?

  resources :works
  post '/works/:id/upvote', to: 'works#upvote', as: 'upvote'

  resources :users, only: [:index, :show]
end
