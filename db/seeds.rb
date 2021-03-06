# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Currency.delete_all

Pledge.delete_all
Wallet.delete_all
Comment.delete_all
Proposition.delete_all
User.delete_all

@currency1 = Currency.create!(name: "BTC")
@currency2 = Currency.create!(name: "USD")
@currency3 = Currency.create!(name: "LTC")

@investor = Investor.create!(email: "investor@money.org", name: "Charles Xavier", password: "password", password_confirmation: "password")
@investor.skip_confirmation!
@investor.wallet.update(btc: 23, eth: 265.52, ltc: 2532)
@investor.save
Investor.first.confirm

@trader = Trader.create!(email: "someone@somewhere.com", name: "Max Keiser", password: "password", password_confirmation: "password")
@trader.skip_confirmation!
@trader.wallet.update(btc: 0.3244, eth: 15.324, ltc: 100)
@trader.save
Trader.first.confirm

@trader2 = Trader.create!(email: "cryptotrader@places.com", name: "Satoshi Nakamoto", password: "password", password_confirmation: "password")
@trader2.skip_confirmation!
@trader2.wallet.update(btc: 3.23, eth:43.235, ltc: 3.5)
@trader2.save
Trader.last.confirm

@proposition = Proposition.create!(title: "buy bitcoin", description: "Ac pulvinar sodales, nec nulla rutrum suspendisse vitae neque, sapien massa erat nec dignissim, ante sit molestie mi sed. Quis tellus erat risus in, vivamus lobortis in nullam, tempor odio, nulla ut pede libero eros, turpis a. Velit ac et eget lacus sed, urna enim imperdiet urna nonummy nec amet, nec non at lorem mattis ante mauris, morbi ipsum tempor, enim et.", currency_to_id: @currency1.id, currency_from_id: @currency2.id, trader_id: @trader.id, trade: DateTime.now + 1.days, expire: DateTime.now + 2.days, order_type: "buy")

@proposition2 = Proposition.create!(title: "sell litecoin", description: "Lorem ipsum dolor sit amet, ipsum eu dui dictum lorem rutrum, fermentum in justo leo et, nascetur blandit imperdiet tempus scelerisque lectus sit. Risus diam quam purus a quo, lorem tempora, sollicitudin pariatur mi, leo imperdiet turpis ante justo mauris morbi.", currency_to_id: @currency2.id, currency_from_id: @currency3.id, trader_id: @trader2.id, trade: (DateTime.now + 1.days), expire: (DateTime.now + 2.days), order_type: "sell")

@proposition3 = Proposition.create!(title: "look at me", description: "Lorem ipsum dolor sit amet, ipsum eu dui dictum lorem rutrum, fermentum in justo leo et, nascetur blandit imperdiet tempus scelerisque lectus sit. Risus diam quam purus a quo, lorem tempora, sollicitudin pariatur mi, leo imperdiet turpis ante justo mauris morbi.", currency_to_id: @currency2.id, currency_from_id: @currency3.id, trader_id: @trader2.id, trade: (DateTime.now - 30.days), expire: (DateTime.now - 23.days), order_type: "sell")

@proposition4 = Proposition.create!(title: "another one", description: "Lorem ipsum dolor sit amet, ipsum eu dui dictum lorem rutrum, fermentum in justo leo et, nascetur blandit imperdiet tempus scelerisque lectus sit. Risus diam quam purus a quo, lorem tempora, sollicitudin pariatur mi, leo imperdiet turpis ante justo mauris morbi.", currency_to_id: @currency2.id, currency_from_id: @currency3.id, trader_id: @trader2.id, trade: (DateTime.now - 10.days), expire: (DateTime.now - 3.days), order_type: "buy")

@proposition5 = Proposition.create!(title: "to the moon", description: "Lorem ipsum dolor sit amet, ipsum eu dui dictum lorem rutrum, fermentum in justo leo et, nascetur blandit imperdiet tempus scelerisque lectus sit. Risus diam quam purus a quo, lorem tempora, sollicitudin pariatur mi, leo imperdiet turpis ante justo mauris morbi.", currency_to_id: @currency2.id, currency_from_id: @currency3.id, trader_id: @trader2.id, trade: (DateTime.now + 1.days), expire: (DateTime.now + 2.days), order_type: "sell")

@pledge1 = Pledge.create!(user_id: @investor.id, proposition_id: @proposition3.id, btc_value: 2.5)
@pledge2 = Pledge.create!(user_id: @investor.id, proposition_id: @proposition5.id, btc_value: 1.2352)
@pledge3 = Pledge.create!(user_id: @investor.id, proposition_id: @proposition.id, btc_value: 666)

@proposition.successful
@proposition2.successful
@proposition3.successful
@proposition4.successful
@proposition5.successful
