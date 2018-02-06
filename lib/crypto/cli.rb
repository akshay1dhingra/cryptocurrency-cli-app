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
    puts ""
    puts "Todays Top 50 Cryptocurrencies:"
    puts ""
    @coins = Crypto::Coin.today
  end

  def list_coins
    puts ""
      @coins.each.with_index(1) { |coin, i| puts "#{i}. #{coin.name}"}
  end

  def coin_info(input)
    coin = @coins[input.to_i-1]
    #binding.pry
    puts ""
    puts "--- COIN INFO ---"
    puts "Name: #{coin.name}"
    puts "Price: #{coin.price}"
    puts "Market Cap: #{coin.market_cap}"
    puts "Change: #{coin.change}"
    puts "------------------"
    puts ""
  end

  def menu
    input = nil
    while input != "done"
      puts ""
      puts "Enter the NUMBER of the coin you would like more info on or type 'list' to see list of coins or type 'done' to close app:"
      input = gets.strip.downcase
      if input.to_i > 0 && input.to_i <= 50
        coin_info(input)
      elsif input == "list"
        list_coins
      elsif input == "done"
        break
      elseif input == ""
        puts ""
      else
        puts "Does not compute. Type number, list, or done:"
      end
    end
  end

  def goodbye
    puts ""
    puts "See you tomorrow and remember to HODL!!!!"
  end

end
