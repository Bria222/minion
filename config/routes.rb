Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/summon', to: 'minions#index'
      get '/minions/:id', to: 'minions#show'
      post '/minion/add', to: 'minions#create'
      delete '/minion/delete/:id', to: 'minions#destroy'
      patch '/minion/update/:id', to: 'minions#update'
      
    end
  end






  # get 'minions/index'
  # get 'minions/show'
  # get 'minions/new'
  # get 'minions/create'
  # get 'minions/edit'
  # get 'minions/update'
  # get 'minions/destroy'
  
end
