Rails.application.routes.draw do
  
  resources :traders, only: [:index] do 
    resources :propositions 
  end

  resources :propositions, :only => [:index] do
    member do
      get 'upvote'
      get 'downvote'
    end
  end


  devise_for :investors
  devise_for :traders

  get '/', to: 'main#index' 

end
