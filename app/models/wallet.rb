class Wallet < ApplicationRecord

  belongs_to :user

  def list 
    self.attributes.slice('btc', 'ltc', 'eth')
  end

end
