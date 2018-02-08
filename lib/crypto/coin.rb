class Crypto::Coin

  attr_accessor :name, :market_cap, :price, :change, :chart, :new_coin

  @@all_coins = []

  def initialize(name = nil, price = nil, market_cap = nil, change = nil)
    @name = name
    @price = price
    @market_cap = market_cap
    @change = change

  end

  def self.today
    Crypto::Scraper.scrape_coinranking
  end

  def self.all
    @@all_coins
  end

end
