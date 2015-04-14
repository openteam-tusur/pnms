Pnms::Application.routes.draw do

  resources :reports

  get '/ru/registratsiya' => 'claims#index'
  get '/ru/registratsiya/new' => 'claims#new'
  post '/ru/registratsiya' => 'claims#create'
  get '/ru/registratsiya/done' => 'claims#done'

  get '/en/registration' => 'claims#index'
  get '/en/registration/new' => 'claims#new'
  post '/en/registration' => 'claims#create'
  get '/en/registration/done' => 'claims#done'

  root :to => 'application#index'
  get '/(*path)', :to => 'application#index'
end
