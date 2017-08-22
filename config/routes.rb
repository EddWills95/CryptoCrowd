Rails.application.routes.draw do

  devise_for :investors
  devise_for :traders

  
  resources :traders, only: [:index, :show] do 
    resources :wallet, only: [:index]
    resources :propositions 
  end

  resources :investors, only: [:index, :show] do
    resources :wallet, only: [:index]
    resources :pledges, only: [:create]
  end

  resources :propositions, :only => [:index, :show] do
    resources :comments, only: [:index, :create]
    member do
      get 'upvote'
      get 'downvote'
    end
  end

  get '/', to: 'main#index' 

end
