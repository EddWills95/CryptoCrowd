class WalletController < ApplicationController

  before_action :authenticate_trader!

  def index
    @id = params[:investor_id] || params[:trader_id]
    @user = User.find(@id)
  end

end