class PropositionsController < ApplicationController
  def new
    @trader = Trader.find(current_trader.id)
    @proposition = Proposition.new
  end

  def create
    @trader = Trader.find(params[:trader_id])
    @proposition = @trader.propositions.new(create_params)
    if @proposition.save 
      redirect_to '/'
    else
      flash[:alert] = "Error, Try Again!!"
      render :action => "new" 
    end  
  end

  def create_params
    params.require(:proposition).permit(:title, 
      :currency1_id, :currency2_id, :description,
      :currency_to_id, :currency_from_id)
  end

end
