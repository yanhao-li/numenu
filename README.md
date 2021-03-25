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