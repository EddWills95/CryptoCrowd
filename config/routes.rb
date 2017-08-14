Rails.application.routes.draw do
  get 'main/index'

  devise_for :investors
  devise_for :traders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'main#index' 

end
