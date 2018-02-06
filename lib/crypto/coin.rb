class Crypto::Coin

  #@@all_coins = []

  attr_accessor :name, :market_cap, :price, :volume, :circulation, :change, :chart, :url, :social, :new_coin

  def initialize(name = nil, price = nil, market_cap = nil, change = nil)
    @name = name
    @price = price
    @market_cap = market_cap
    @change = change

  end

  def self.today
    self.scrape_coinranking
  end

  def self.scrape_coinranking
    doc = Nokogiri::HTML(open("https://coinranking.com/"))

    @all_coins = []
    #create an array of all the coins along with their attributes set that to a variable
    coins = doc.css(".coin-list__body .coin-list__body__row").collect do |rows|
      #binding.pry
      each_coin = rows.css("span").collect do |text|
        text.text
      end
    end

    #take the individual coin variable and assign each of its attributes to th
    coins.each do |coin|
      new_coin = self.new(name = coin[2], price = coin[3], market_cap = coin[6], change = coin[9].gsub("\t","").gsub("\n","") )
      @all_coins << new_coin
      #binding.pry
    end
  @all_coins
  end

end
