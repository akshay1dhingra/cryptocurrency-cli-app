# CLI Controller

class Crypto::CLI

  def call
    puts "Todays Crypto Prices:"
    list_coins
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

end
