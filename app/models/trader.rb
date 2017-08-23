class Trader < User

  has_many :propositions

  def performance
    self.propositions.each do |prop|
      prop.successful
    end

    @good_trades = self.propositions.where(success: true)

    @success = (@good_trades.count.to_f / self.propositions.count) * 100.0
  end

end
