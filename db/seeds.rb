# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@currency1 = Currency.create!(name: "BTC")
@currency2 = Currency.create!(name: "USD")
@investor = Investor.create!(email: "investor@money.org", name: "Charles Xavier", password: "password", password_confirmation: "password")
@investor.skip_confirmation!
@trader = Trader.create!(email: "someone@somewhere.com", name: "Max Keiser", password: "password", password_confirmation: "password")
@trader.skip_confirmation!
@proposition = Proposition.create!(title: "buy", description: "please", currency_to_id: @currency1.id, currency_from_id: @currency2.id, trader_id: @trader.id)
