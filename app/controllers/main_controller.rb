class MainController < ApplicationController
  def index
    @propositions = Proposition.all.limit(20)
    @trader = current_trader if current_trader
    @investor = current_investor if current_investor
  end
end
