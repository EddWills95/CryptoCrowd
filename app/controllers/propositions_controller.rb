class PropositionsController < ApplicationController
  before_action :find_user
 
  def new
    @trader = Trader.find(current_trader.id)
    @proposition = Proposition.new
  end

  def show
    @comment = Comment.new
    @proposition = Proposition.find(params[:id])
    @pledge = Pledge.new(proposition: @proposition, user: @user)
  end

  def create
    @trader = Trader.find(params[:trader_id])
    @altered_params = create_params
    @altered_params[:expire] = DateTime.now + (params[:proposition][:expire].to_i).days
    @altered_params[:trade] = DateTime.now + (params[:proposition][:trade].to_i).days
    @proposition = @trader.propositions.new(@altered_params)
    if @proposition.save 
      redirect_to '/'
    else
      flash[:alert] = "Error, Try Again!!"
      render :action => "new" 
    end  
  end

  def upvote
    @proposition = Proposition.find(params[:id])
    @proposition.upvote_from(User.find(params[:user_id]))
    @new_vote_number = @proposition.total_votes
  end

  def downvote
    @proposition = Proposition.find(params[:id])
    @proposition.downvote_from(User.find(params[:user_id]))
    @new_vote_number = @proposition.total_votes
  end

  private
  def create_params
    params.require(:proposition).permit(:title, 
      :currency1_id, :currency2_id, :description,
      :currency_to_id, :currency_from_id,
      :trade, :expire)
  end

  def find_user
    @user = current_trader || current_investor
  end

end
