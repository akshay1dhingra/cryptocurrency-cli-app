class Crypto::Coin

  attr_accessor :name, :market_cap, :price, :volume, :circulation, :change, :chart, :url, :social

  def self.today
    #should return a bunch of instances of Coin
    #puts "
    #  1. Bitcoin
    #  2. Ethereum
    #  3. Ripple
    #  4. Bitcoin Cash
    #  5. Cardano
    #  6. NEO
    #  7. Lightcoin
    #  8. Stellar
    #  9. EOS
    #  10.NEM
    #  11.IOTA
    #  12.DASH
    #  13.Monero
    #  14.TRON
    #  15.ICON
    #"
    # now these new coin instances will be communicating with the website but it should look something like this
    coin_1 = self.new
    coin_1.name = "Bitcoin"
    coin_1.market_cap = "$172,44,976,937"
    coin_1.price = "$10,266.40"
    coin_1.volume = "$8,576,320,000 "
    coin_1.circulation = "16,835,987 BTC"
    coin_1.change = "-9.10%"
    coin_1.chart = "url"
    coin_1.url = "x"
    coin_1.social = "z"

    coin_2 = self.new
    coin_2.name = "Ethereum"
    coin_2.market_cap = "$172,44,976,937"
    coin_2.price = "$10,266.40"
    coin_2.volume = "$8,576,320,000 "
    coin_2.circulation = "16,835,987 BTC"
    coin_2.change = "-9.10%"
    coin_2.chart = "url"
    coin_2.url = "x"
    coin_2.social = "z"

  end

end
