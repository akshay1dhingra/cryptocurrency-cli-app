# CLI Controller

class Crypto::CLI

  def call
    STDOUT.sync = true #this is needed as 'puts' does not write immediately to 'STDOU' but buffers the strings internally and writes the outpus in bigger chunks.
    list_coins
    menu
    goodbye
  end

  def list_coins
    puts "Todays Top 15 Cryptocurrencies:"
    @coins = Crypto::Coin.today
  end

  def menu
    input = nil
    while input != "done"
      puts "Enter the number of the coin you would like more info on or type list to see coins or type done:"

      input = gets.strip.downcase
      case input
      when "1"
        puts "more info on coin 1..."
      when "2"
        puts "more info on coin 2..."
      when "3"
        puts "more info on coin 3..."
      when "4"
        puts "more info on coin 4..."
      when "5"
        puts "more info on coin 5..."
      when "6"
        puts "more info on coin 6..."
      when "7"
        puts "more info on coin 7..."
      when "8"
        puts "more info on coin 8..."
      when "9"
        puts "more info on coin 9..."
      when "10"
        puts "more info on coin 10..."
      when "11"
        puts "more info on coin 11..."
      when "12"
        puts "more info on coin 12..."
      when "13"
        puts "more info on coin 13..."
      when "14"
        puts "more info on coin 14..."
      when "15"
        puts "more info on coin 15..."
      when "list"
        list_coins
      else
        puts "Does not compute. Type number, list, or done:"
      end
    end
  end

  def goodbye
    puts "See you tomorrow and remember to HODL!!!!"
  end

end
