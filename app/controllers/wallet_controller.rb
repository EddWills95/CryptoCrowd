class WalletController < ApplicationController

  before_action do
    if current_trader != nil
      authenticate_trader!        
    else
      authenticate_investor!
    end
  end

  def index
    @id = params[:investor_id] || params[:trader_id]
    @user = User.find(@id)
  end

end