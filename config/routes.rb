Pnms::Application.routes.draw do

  put '/ali.txt' => redirect('http://alihack.com')

  resources :reports

  get '/ru/registratsiya' => 'claims#new'
  post '/ru/registratsiya' => 'claims#create'
  get '/ru/registratsiya/done' => 'claims#done'

  get '/en/registration' => 'claims#new'
  post '/en/registration' => 'claims#create'
  get '/en/registration/done' => 'claims#done'

  namespace :manage do
    resources :permissions, :except => [:edit, :update]
    resources :claims, :only => [:index, :show]
  end

  resources :users, :only => [] do
    get 'search', :on => :collection
  end

  root :to => 'application#index'
  get '/(*path)', :to => 'application#index'
end
