Pnms::Application.routes.draw do

  get '/ru/registratsiya' => 'claims#index'
  get '/ru/registratsiya/new' => 'claims#new'

  root :to => 'application#index'
  get '/(*path)', :to => 'application#index'
end
