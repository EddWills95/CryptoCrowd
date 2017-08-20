class TradersController < Devise::RegistrationsController
  def show
    @trader = Trader.find(params[:id])
  end
end
