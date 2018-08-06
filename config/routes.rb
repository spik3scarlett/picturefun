Rails.application.routes.draw do
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'

   resources :users
   get '/nowy-uczen', to: 'users#new'
   post '/nowy-uczen', to: 'users#create'
   resources :pictures
   get '/new-picture', to: 'pictures#new'
   post '/new-picture', to: 'pictures#create'
   


end
