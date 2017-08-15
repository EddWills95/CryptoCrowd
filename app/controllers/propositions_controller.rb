class PropositionsController < ApplicationController
  def new
    @trader = Trader.find(current_trader.id)
    @proposition = Proposition.new
  end

  def create
    @trader = Trader.find(params[:trader_id])
    binding.pry
    @proposition = @trader.propositions.new(create_params)
    if @proposition.save 
      redirect '/'
    else
      flash[:alert] = "Error, Try Again!!"
      render :action => "new" 
    end  
  end

  def create_params
    params.require(:proposition).permit(:title, 
      :currency1_id, :currency2_id, :description)
  end

end
