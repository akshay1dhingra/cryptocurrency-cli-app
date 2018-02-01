class Crypto::Coin

  @@all = []

  attr_accessor :name, :market_cap, :price, :volume, :circulation, :change, :chart, :url, :social, :new_coin

  def initialize(name = nil, market_cap = nil, price = nil, volume = nil, circulation = nil, change = nil, chart = nil, url = nil, social = nil, new_coin = nil)
    @name = name
    @market_cap = market_cap
    @price = price
    @volume = volume
    @circulation = circulation
    @change = change
    @chart = chart
    @url = url
    @social = social
    #@@all << self
  end

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
    @@all << self.new("Bitcoin", "$172,44,976,937", "$10,266.40", "$8,576,320,000", "16,835,987 BTC", "-9.10%", "url", "x", "z" )
    #@@all << coin_1
    #coin.name = "Bitcoin"
    #coin.market_cap = "$172,44,976,937"
    #coin_1.price = "$10,266.40"
    #coin_1.volume = "$8,576,320,000 "
    #coin_1.circulation = "16,835,987 BTC"
    #coin_1.change = "-9.10%"
    #coin_1.chart = "url"
    #coin_1.url = "x"
    #coin_1.social = "z"

    @@all << self.new("Ethereum", "10", "$11", "12", "13 ETH", "-9.10%", "url", "x", "z" )
    #@@all << coin_2
    #coin_2.name = "Ethereum"
    #coin_2.market_cap = "$172,44,976,937"
    #coin_2.price = "$10,266.40"
    #coin_2.volume = "$8,576,320,000 "
    #coin_2.circulation = "16,835,987 BTC"
    #coin_2.change = "-9.10%"
    #coin_2.chart = "url"
    #coin_2.url = "x"
    #coin_2.social = "z"

  end
  #binding.pry
  #def new_coin
  #  @new_coin = self.today
  #end

end
