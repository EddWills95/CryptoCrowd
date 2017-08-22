class PledgesController < ApplicationController

  def create 
    @new_params = create_params
    @new_params["btc_value"] = params["pledge_amount"].join("").to_f
    @new_params.delete("pledge_amount")
    @new_params["proposition_id"] = params["proposition_id"].join("").to_i
    @new_params[:user_id] = create_params[:investor_id] || create_params[:trader_id]
    if @new_params["investor_id"]
      @new_params.delete("investor_id")
    else
      @new_params.delete("trader_id")
    end
    @new_params
    Pledge.create!(@new_params)
    @user = User.find(@new_params[:user_id])
    @new_btc_value = @user.wallet.btc -= @new_params[:btc_value]
    @user.wallet.update(btc: @new_btc_value)
  end

  private
  def create_params
    unless params[:pledge_currency] == "btc"
      #do some conversion
    end 
    params.permit(:investor_id, :trader_id, :proposition_id => [], :pledge_amount => [])
  end

end 