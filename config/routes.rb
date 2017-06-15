Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/stocks' => 'stocks#index'
  get '/stocks/new' => 'stocks#new'
  post '/stocks' => 'stocks#create'
  get '/stocks/:id' => 'stocks#show'
  get '/stocks/:id/edit' => 'stocks#edit'
  patch '/stocks/id' => 'stocks#update'
  delete '/stocks/:id' => 'stocks#destroy'
end


