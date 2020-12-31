Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do
      resources :users, only: [:create]
      
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      patch '/profile', to: 'users#update'
    end
  end 
  
  resources :favorites
  resources :songs

  get '/artists/:id', :to => 'songs#artists'
  get '/artists/:id/songs', :to => 'songs#artist_show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end