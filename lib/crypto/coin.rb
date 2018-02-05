class Crypto::Coin

  #@@all_coins = []

  attr_accessor :name, :market_cap, :price, :volume, :circulation, :change, :chart, :url, :social, :new_coin

  #def initialize(name = nil, market_cap = nil, price = nil, volume = nil, circulation = nil, change = nil, chart = nil, url = nil, social = nil, new_coin = nil)
  #  @name = name
  #  @market_cap = market_cap
  #  @price = price
  #  @volume = volume
  #  @circulation = circulation
  #  @change = change
  #  @chart = chart
  #  @url = url
  #  @social = social
  #  #@@all << self
#  end

  #def self.all
  #  @@all_coins
  #end

  def self.today
    # scrape coinmarketcap.com and return top 15 coins with their information available for access
    self.scrape_coins
  end

  def self.scrape_coins
    all_coins = [] #----> this is somehow breaking the code. commenting this out fixes the code

    all_coins << self.scrape_coinmarketcap

    # Go to coinmarketcap
    # extract the properties
    # instantiate a coin with its properties

    # now these new coin instances will be communicating with the website but it should look something like this
    ## @@all << self.new("Bitcoin", "$172,44,976,937", "$10,266.40", "$8,576,320,000", "16,835,987 BTC", "-9.10%", "urlll", "xxx", "zzz" )
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

    ## @@all << self.new("Ethereum", "10", "$11", "12", "13 ETH", "-9.10%", "url", "x", "z" )
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

    all_coins #---> this breaks the code somewhow. see line 30

  end

  def self.scrape_coinmarketcap
    doc = Nokogiri::HTML(open("https://coinmarketcap.com/"))

    #table = doc.css("#currencies tbody")
    coins = self.new
    coins.name = doc.css(".currency-name-container").collect {|names| names.text.chomp}
    coins.market_cap = doc.css(".circulating-supply").collect {|mc| mc.text.chomp.gsub(" ","")}
    coins.price = doc.css(".price").collect {|prices| prices.text.chomp}
    coins.volume = doc.css(".volume").collect {|volumes| volumes.text.chomp}
    coins.circulation = doc.css(".circulating-supply a").collect {|supplies| supplies.text.chomp}
    coins.change = doc.css(".percent-24h").collect {|changes| changes.text.chomp}
    coins
    #binding.pry
  end


end
