Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/brews' => 'brews#index'
  get '/brews/:id' => 'brews#show'
end
