add a new SSH key for each computer you are using https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/

click Generating a new SSH key and adding it to the ssh-agent by following the prompt ALL in bash
https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/

just press enter when prompted to avoid having to name key or entering passphrase

now Add a new SSH key to your github account
https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/

once added to the settings, enter the following in bash

git remote add origin (SSH repo key)
git push -u origin master
