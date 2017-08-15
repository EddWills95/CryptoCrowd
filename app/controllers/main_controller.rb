class MainController < ApplicationController
  def index
    @trader = current_trader if current_trader
    @investor = current_investor if current_investor
  end
end
