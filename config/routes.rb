Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do  
    namespace :v1 do
      get '/brews' => 'brews#index'
      post '/brews' => 'brews#create'
      get '/brews/:id' => 'brews#show'
      patch '/brews/:id' => 'brews#update'
      delete '/brews/:id' => 'brews#destroy'
    end

    namespace :v2 do
      get '/brews' => 'brews#index'
      post '/brews' => 'brews#create'
      get '/brews/:id' => 'brews#show'
      patch '/brews/:id' => 'brews#update'
      delete '/brews/:id' => 'brews#destroy'
    end

  end

end