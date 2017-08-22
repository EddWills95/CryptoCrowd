class Wallet < ApplicationRecord

  belongs_to :user

  def list 
    self.attributes.slice('btc', 'ltc', 'eth')
  end

  def available
    @available = []
    self.list.each do |cur, val| 
      unless val === nil
        @available << [cur]
      end
    end
    return @available
  end

end
