source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.8'

# Use sqlite3 as the database for Active Record
group :development, :test do
  gem 'sqlite3'
end

# Add rails 12_factor to the production environment 
group :production do
  gem 'rails_12factor'
  gem 'pg'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin]
gem 'coffee-script-source', '1.8.0'


# Add gem Devise - which is used for authentification 

gem 'devise'

# Add gem cancancan which is used for more specified authorization

gem 'cancancan'

# Add pagination which will display user reviews on different pages 

gem 'will_paginate', '~> 3.0.6' 

# Setting my Ruby Version 
ruby '2.1.5'

# Adding Rspec Rails for testing
group :development, :test do
  gem 'rspec-rails', '~> 3.0'
end
# Adding Factory Girl for running tests 
gem "factory_girl_rails", "~> 4.0"

# Add Guard rspec to ypur gemfile 
gem 'guard-rspec', require: false


# Add gem spork-rails to your app 
gem 'spork-rails'


# Adding the stripe gem to my file 

gem 'stripe'


# Adding the byebug gem 

gem 'byebug'


# (Since spork-rails depends on spork, it is not necessary to put both spork and spork-rails in your Gemfile)
# Add Gem sport to your Gemfile 
group :development do
  gem 'guard-spork'
end