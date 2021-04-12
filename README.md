# Numenu

## Version
Ruby `2.6.6p146`

Rails `6.1.3`

To initialize a new clone:
brew services start postgresql
bundle install --force
rails assets:precompile
bin/rake db:create
bin/rake db:migrate
bin/rake db:seed

To start the application:
bundle exec rackup

## Usage
Test on mobile device:
`rails s -b 0.0.0.0`

Find your local ip address
on mac you could use the command `ipconfig getifaddr en0`

Open the browser on your mobile device
type the ip address in the url bar`xxx.xxx.x.xx:3000`