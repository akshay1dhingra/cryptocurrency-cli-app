scrape from coinmarketcap.com to get all the latest crypto prices
create a Currency class that grabs the table of all the currencies then iterate through them with name, price, volume etc
Each time you iterate will create a new instance of the coin object, thus making it dynamic in case coin changes ranking

How to Build a CLI Gem

1. Plan your gem, imagine your interface
2. start with the project structure - google is your best friend
3. start with the entry point - the file run
4. force that to build the CLI interface
5. stub out the interface
6. start making things real
7. discover objects
8 program


- A CLI for prices on Cryptocurrency via coinmarketcap.com

- user types "Cryptocurrency"
  and shows a list of top 15 coins (needs to be dynamic because standings change frequently)
  or types "exit" to close application
  application asks to enter in number (1 to 15)

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

- Asks user "Which coin would you like more details for?"
  user then types in a number (eg "1") and details expand for that coin


  Name      Market Cap        Price       Volume(24h)       Circulation        Change(24h)
  Bitcoin   $172,44,976,937   $10,266.40  $8,576,320,000    16,835,987 BTC     -9.10%


- Asks user if they want to go to see (1 - 5)...
  1. Chart --> (coinmarketcap chart)
  2. Coin Website --> (bitcoin.org/en/)
  3. Social Media Boards --> (bitcoin.reddit.com)
  4. Back to List --> (list)
  5. type "5" or "exit" to exit


- What is a Coin?

  1. a coin has a name
  2. a coin has a market cap
  3. a coin has a price
  4. a coin has a volume
  5. a coin has circulating supply
  6. a coin has change percentage
