Rails.application.routes.draw do 

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  root "galleries#index"


  resources :galleries do 

  resources :images 
  end 

  resources :images do
  resources :comments
  end

  resources :comments do 
  resources :likes
  end

end 




