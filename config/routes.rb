Rails.application.routes.draw do
  
  resources :traders, :only => [:index] do 
    resources :propositions
  end

  get 'main/index'

  devise_for :investors
  devise_for :traders


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'main#index' 

end
