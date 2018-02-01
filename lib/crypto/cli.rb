# CLI Controller
require 'pry'
class Crypto::CLI

  attr_accessor :coins, :name, :market_cap, :price, :volume, :circulation, :change, :chart, :url, :social

  def call
    STDOUT.sync = true #this is needed as 'puts' does not write immediately to 'STDOU' but buffers the strings internally and writes the outpus in bigger chunks.
    todays_top_coins
    list_coins
    menu
    goodbye
  end

  def todays_top_coins
    puts "Todays Top 15 Cryptocurrencies:"
    #@coins = []
    @coins = Crypto::Coin.today
    #@coins.each.with_index(1) do |coin, i|
      #binding.pry
     #puts "#{i}. #{coin.name}"
    #end
  end

  def list_coins
    @coins.each.with_index(1) do |coin, i|
     puts "#{i}. #{coin.name}"
   end
  end

  def coin_info(input)
    puts "Price: #{@coins[input.to_i-1].price}, Market Cap: #{@coins[input.to_i-1].market_cap}, Volume: #{@coins[input.to_i-1].volume}, Circulation: #{@coins[input.to_i-1].circulation}, Change: #{@coins[input.to_i-1].change}, Chart: #{@coins[input.to_i-1].chart}, URL: #{@coins[input.to_i-1].url}, Social Media: #{@coins[input.to_i-1].social}"
  end

  def menu
    input = nil
    while input != "done"
      puts "Enter the NUMBER of the coin you would like more info on or type 'list' to see list of coins or type done:"
      input = gets.strip.downcase
      if input.to_i > 0 && input.to_i <= 15
        #puts @coins[input.to_i-1].name
        coin_info(input)
      elsif input == "list"
        list_coins
      elsif input == "done"
        break
      else
        puts "Does not compute. Type number, list, or done:"
      end
    end
  end

  def goodbye
    puts "See you tomorrow and remember to HODL!!!!"
  end

end
