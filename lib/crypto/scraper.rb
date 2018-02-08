class Crypto::Scraper

  def self.scrape_coinranking
    doc = Nokogiri::HTML(open("https://coinranking.com/"))

    #create an array of all the coins along with their attributes set that to a variable
    coins = doc.css(".coin-list__body .coin-list__body__row").collect do |rows|
      each_coin = rows.css("span").collect do |text|
        text.text
      end
    end

    #iterate through coins variable and take an individual coin and assign each of its attributes to their corresponding attributes
    coins.each do |coin|
      new_coin = Crypto::Coin.new(name = coin[2], price = coin[3], market_cap = coin[6], change = coin[9].gsub("\t","").gsub("\n","") )
      Crypto::Coin.all << new_coin #@all_coins << new_coin
    end
  Crypto::Coin.all
  end

end
