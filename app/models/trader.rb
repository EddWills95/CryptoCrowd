class Trader < User

  has_many :propositions

  def performance
    # depending how long this takes
    # should maybe cache it

    self.propositions.each do |prop|
      prop.successful
    end

    @good_trades = self.propositions.where(success: true)

    @success = (@good_trades.count.to_f / self.propositions.count) * 100
  end

end
