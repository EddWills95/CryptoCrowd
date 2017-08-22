class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :current_user

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :bio, :favourite_coin])
  end

  def current_user
    @trader = current_trader if current_trader
    @investor = current_investor if current_investor
  end
end
