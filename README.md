Push-CMS for use with [Alex Ivlev's Node Push API] (https://github.com/hingarn/node-push-server)

## Installation
1. Install Ruby, RubyGems, and Rails. Follow the instructions at [http://rubyonrails.org/download](http://rubyonrails.org/download)
2. Install RVM. ```bash < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)``` Then add this to your shell profile: ```[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"```
3. Clone the repo. ```git clone git@github.com:adampassey/Push-CMS.git```
4. Go into the project directory, update your bundle and start the server

 ```
 cd Push-CMS
 bundle install
 rails s
 ```
 
 _NOTE_: Technically, installing RVM is optional. It's just good practice to make sure your local environment uses the same versions of Ruby and Rails.
 If you'd rather not install RVM, just make sure to use ruby-1.9.3-p125 and rails (3.2.3).