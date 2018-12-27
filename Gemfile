source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.7.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.15'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'devise'
gem 'slim' #Layout engine
gem 'bootstrap-sass', '~> 3.3.6'
gem 'rails_utils' # Generate flash message (Bootstrap)
gem 'font-awesome-rails'
gem 'simple_form'
gem 'will_paginate', '~> 3.1.0'
gem 'will_paginate-bootstrap'
gem 'simple-navigation'
gem 'simple-navigation-bootstrap'
gem 'adminlte2-rails'
gem 'seedbank'
gem "cancancan"
gem 'enumerize' # Enum in Rails
gem 'paperclip'

group :development, :test do
  gem 'rspec-rails' # After bundle, run: 
  gem 'better_errors'
  gem 'letter_opener'
  gem 'binding_of_caller'
  gem "factory_girl_rails"
  gem 'shoulda'
  gem "awesome_print"
  gem "capybara" # add "require 'capybara/rspec'" to spec_helper
  gem 'pry-rails'
end

group :development do
  gem 'capistrano', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-rvm', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma', require: false
  gem 'capistrano-sidekiq', require: false
  gem 'capistrano-npm'
end

group :production do
  gem 'rails_12factor'
  #gem 'puma'
end

