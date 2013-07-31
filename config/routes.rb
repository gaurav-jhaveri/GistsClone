SessionsTemplate::Application.routes.draw do
  resources :users, :only => [:new, :create, :show]
  resource :session, :only => [:new, :create, :destroy]

  resources :gists, only: [:index] do
    resource :favorite, :only => [:create, :destroy]
  end

  resources :favorites, only: [:index]

  root :to => "users#new"
end
