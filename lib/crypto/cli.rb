# CLI Controller

class Crypto::CLI

  def call
    puts "Todays Crypto Prices:"
    list_coins
    menu
    goodbye
  end

  def list_coins
    puts "
      1. Bitcoin
      2. Ethereum
      3. Ripple
      4. Bitcoin Cash
      5. Cardano
      6. NEO
      7. Lightcoin
      8. Stellar
      9. EOS
      10.NEM
      11.IOTA
      12.DASH
      13.Monero
      14.TRON
      15.ICON
    "
  end

  def menu
    puts "Enter the number of the coin you would like more info on or type exit:"
    input = nil
    while input != "exit"
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
      end
    end
  end

  def goodbye
    puts "See you tomorrow and remember to HODL!!!!"
  end

end
