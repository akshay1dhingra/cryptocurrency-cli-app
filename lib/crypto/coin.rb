class Crypto::Coin

  attr_accessor :name, :market_cap, :price, :change, :description

  @@all_coins = []

  def initialize(name = nil, price = nil, market_cap = nil, change = nil, description = nil)
    @name = name
    @price = price
    @market_cap = market_cap
    @change = change
    @description = description
  end

  def self.all
    @@all_coins
    #binding.pry
  end

end
