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
    puts "Todays Top 15 Cryptocurrencies:"
    #@coins = []
    puts ""
    @all_coins = Crypto::Coin.today
    binding.pry
    #@coins.each.with_index(1) do |coin, i|
     #puts "#{i}. #{coin.name}"
    #end
  end

  def list_coins
    puts ""
    @all_coins.name.each.with_index(1) do |coin, i|
     puts "#{i}. #{coin}"
   end
  end

  def coin_info(input)
    puts ""
    puts "--- COIN INFO ---"
    puts "Price: #{@coins[input.to_i-1].price},"
    puts "Market Cap: #{@coins[input.to_i-1].market_cap},"
    puts "Volume: #{@coins[input.to_i-1].volume},"
    puts "Circulation: #{@coins[input.to_i-1].circulation},"
    puts "Change: #{@coins[input.to_i-1].change},"
    puts "Chart: #{@coins[input.to_i-1].chart},"
    puts "URL: #{@coins[input.to_i-1].url},"
    puts "Social Media: #{@coins[input.to_i-1].social}"
    puts "------------------"
    puts ""
  end

  def menu
    input = nil
    while input != "done"
      puts ""
      puts "Enter the NUMBER of the coin you would like more info on or type 'list' to see list of coins or type 'done' to close app:"
      input = gets.strip.downcase
      if input.to_i > 0 && input.to_i <= 15
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
