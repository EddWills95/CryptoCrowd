class WalletController < ApplicationController

  def index
    @id = params[:investor_id] || params[:trader_id]
    @user = User.find(@id)
  end

end