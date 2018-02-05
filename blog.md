01/30/18

LOG: WOW so that was tough. I just spent 3 days trying to set up my local environment on my machine. I was able to create an SSH key from my home machine and connect that to my github account so that I can pull clone and push seamlessly. For some reason, my work computer already allows me to do this. it could be because I have IDE already installed on that machine; but makes no sense since I have IDE also installed on my home machine. strange. I will have to follow the same instructions in the setting_up_git_remote.md file on my portable machine. I will update on how that goes.

LOG: I am now following Avis step by step video. Its getting late so I hope I can get through at least half of it tonight and finish the video tomorrow morning at work on that machine... lets hope it works!

LOG: I followed the video to get my cli.rb to start working via my bin/crypto file and everything is working so far. I got to the 23.25 minute mark on the walk-through and its nearly midnight. time for bed. Mr. Robot logging off


01/31/18

LOG: I was successfully able to add the new SSH key for my work computer and loaded it into my github account.

LOG: I figured out why BASH was not printing out my 'puts' list immediately. BASH uses unix commands and when BASH is used on windows, it inherits the unix behavior of buffering strings internally and writing the output in bigger chunks. This was solved by adding 'STDOUT.sync = true' in my '.call' method before the command line hits the chunk of strings. When sync mode is true, all output is immediately flushed to the underlying operating system and is not buffered internally.



LOG: followed the video up until 35.23 and getting a weird error when running the bin/crypto file it is saying that cli.rb line 37 has a string literal in condition and in cli.rb line 19 'block in list_coins has an undefined 'name' for "Bitcoin":String <NoMethodError>... not sure why thats happening because I have given .name the attr_accessor :name... could be something else.


02/01/18

LOG: I was able to refactor my #menu in cli.rb to correctly print the strings according to inputs. Before, I would get my "does not compute" string if i ever tried to break the loop. Now it works fine. Another issue now is that my @coins array is not giving me my objects that i wish to create. need to refactor that next

LOG: I solved the NoMethodError from last night. I just had to initialize the object with a new coin with its attributes so now the object has a name, price, etc that i can call on. I am now facing a new error. The progam initializes properly and spits out the list of coins with its name attribute correctly the first time, but when i call on 'list_coins' method to print out the list of coins again, I am getting duplicates of the coins.

LOG: Fixed the duplication issue. the way i had my @#todays_top_coins method set up initially, it would initialize new coins each time it was called. What I did was I took out the logic where I was iterating through my @coins array and printing out its name, and placing that in its own new method #list_coins. So when the user is prompted to type in a number for more info or type in 'list' for list of coins, the console will print the list of the coins without creating new objects and pushing them into my @@all array. I also went ahead and made the #coin_info method that takes the users input, turns that into the corresponding integer to correlate to the desired coin object in my @coins array and printing out its price, market cap, volume etc.

02/02/18

LOG: added empty spacing between sentences so that the command line is easier to read.

LOG: fixed and updated gemspec file so that I can run bin/console and hop into pry. nokogiri is set up and up to date

02/03/18

LOG: STarted to scrape the coinmarketcap.com site. Having trouble picking the right information I need to display. Playing around with Nokogiri for a little while and looking online for clues

LOG: I was able to find and scrape all the necessary data from the website for each attribute. I then spent the next several hours trying to get the array and methods to communicate to each other to spit out a list but have run into several roadblocks. Logging off for the day and tackling this issue later. Almost done with the lab.

02/05/18

LOG: My objects are not communicating properly. @all_coins is bringing up nested arrays. 
