class TradersController < ApplicationController
  def index
  end

  def show
    @trader = Trader.find(params[:id])
  end
end
