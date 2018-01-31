01/30/18

LOG: WOW so that was tough. I just spent 3 days trying to set up my local environment on my machine.
I was able to create an SSH key from my home machine and connect that to my github account so that
I can pull clone and push seamlessly. For some reason, my work computer already allows me to do this. it could be because I have IDE already installed on that machine; but makes no sense since I have IDE also installed on my home machine. strange. I will have to follow the same instructions in the setting_up_git_remote.md file on my portable machine. I will update on how that goes.

LOG: I am now following Avis step by step video. Its getting late so I hope I can get through at least half of it tonight and finish the video tomorrow morning at work on that machine... lets hope it works!

LOG: I followed the video to get my cli.rb to start working via my bin/crypto file and everything is working so far. I got to the 23.25 minute mark on the walk-through and its nearly midnight. time for bed. Mr. Robot logging off
-------------------------------------------------------------------------------

01/31/18

LOG: I was successfully able to add the new SSH key for my work computer and loaded it into my github account.

LOG: I figured out why BASH was not printing out my 'puts' list immediately. BASH uses unix commands and when BASH is used on windows, it inherits the unix behavior of buffering strings internally and writing the output in bigger chunks. This was solved by adding 'STDOUT.sync = true' in my '.call' method before the command line hits the chunk of strings. When sync mode is true, all output is immediately flushed to the underlying operating system and is not buffered internally.

LOG: 
