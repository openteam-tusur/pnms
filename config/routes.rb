Pnms::Application.routes.draw do

  resources :reports

  get '/ru/registratsiya' => 'claims#index'
  get '/ru/registratsiya/new' => 'claims#new'
  post '/ru/registratsiya' => 'claims#create'
  put '/ru/registratsiya' => 'claims#create'

  root :to => 'application#index'
  get '/(*path)', :to => 'application#index'
end
