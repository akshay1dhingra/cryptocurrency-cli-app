# CLI Controller

class Crypto::CLI

  attr_accessor :coins, :name, :market_cap, :price, :volume, :circulation, :change, :chart, :url, :social

  def call
    STDOUT.sync = true #this is needed as 'puts' does not write immediately to 'STDOU' but buffers the strings internally and writes the outpus in bigger chunks.
    list_coins
    menu
    #goodbye
  end

  def list_coins
    puts "Todays Top 15 Cryptocurrencies:"
    @coins = []
    @coins << Crypto::Coin.today
    @coins.each.with_index(1) do |coin, i|
      puts "#{i}. #{coin.name}"
    end
  end

  def menu
    input = nil
    while input != "done"
      puts "Enter the number of the coin you would like more info on or type list to see coins or type done:"
      input = gets.strip.downcase

      if input.to_i > 0
        puts @coins[input.to_i-1]
      elsif input == "list"
        list_coins
      elsif "done"
        goodbye
      else
        puts "Does not compute. Type number, list, or done:"
      end

    end
  end

  def goodbye
    puts "See you tomorrow and remember to HODL!!!!"
  end

end
