# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.8', '>= 5.2.8.1'
# Use sqlite3 as the database for Active Record

# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
# gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end
group :development, :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'rubocop-minitest' # or gem 'rubocop-rspec' depending on your test suite
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'shoulda-callback-matchers', '~> 1.1', '>= 1.1.4'
  gem 'shoulda-matchers', '~> 5.1'
  gem 'simplecov', require: false
end
group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'sqlite3'
end
group :production do
  gem 'pg'
end
group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  # gem 'chromedriver-helper'
  gem 'webdrivers'
end
gem 'figaro'
gem 'rmagick'
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'bootstrap', '~> 5.2.0'
gem 'carrierwave'
gem 'cloudinary'
gem 'devise'
gem 'jquery-rails'
gem 'letter_opener', group: :development
gem 'pundit'
gem 'rails-jquery-autocomplete'
gem 'ransack', '~> 2.5'
gem 'sidekiq', '~> 6.5'
gem 'time_diff', '~> 0.3.0'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
