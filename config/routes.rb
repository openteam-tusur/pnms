Pnms::Application.routes.draw do

  resources :reports

  get '/ru/registratsiya' => 'claims#index'
  get '/ru/registratsiya/new' => 'claims#new'
  post '/ru/registratsiya' => 'claims#create'

  get '/en/registration' => 'claims#index'
  get '/en/registration/new' => 'claims#new'

  root :to => 'application#index'
  get '/(*path)', :to => 'application#index'
end
