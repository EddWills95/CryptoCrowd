class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  acts_as_voter

  after_save :create_wallet

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  has_one :wallet

  def create_wallet
    Wallet.create!(user: self)
  end
end
