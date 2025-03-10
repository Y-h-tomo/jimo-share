# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) {|repo| "https://github.com/#{repo}.git" }

ruby "2.6.5"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 6.0.3", ">= 6.0.3.4"
# Use postgresql as the database for Active Record
gem "pg", ">= 0.18", "< 2.0"
# Use Puma as the app server
gem "puma", "~> 4.1"
# Use SCSS for stylesheets
gem "sass-rails", ">= 6"
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem "webpacker", "~> 4.0"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "turbolinks", "~> 5"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.7"
# Use Redis adapter to run Action Cable in production
gem "redis", "~> 4.0"
# Use Active Model has_secure_passwordwhich
gem "bcrypt", "~> 3.1.7"
gem "sidekiq"
# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.2", require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "pry-byebug"
  gem "pry-doc"
  gem "pry-rails"
  gem "rubocop", require: false
  gem "rubocop-performance", "~> 1.8.1", require: false
  gem "rubocop-rails", "~> 2.8.1", require: false
  gem "rubocop-rspec", "~> 1.43.2"
  # gem 'rspec-rails', '~>3.8'
  # gem "factory_bot_rails", '~> 4.10.0'
  gem "diff-lcs", "~> 1.4", ">= 1.4.4"
  gem "rails_best_practices", require: false
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem "listen", "~> 3.2"
  gem "web-console", ">= 3.3.0"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "brakeman"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  # Generate Entity-Relationship Diagrams
  gem "rails-erd"
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  # Easy installation and use of web drivers to run system tests with browsers
  gem "vcr"
  gem "webdrivers"
  gem "webmock"
  # Code coverage
  gem "factory_bot_rails", "~> 4.10.0"
  gem "faker"
  gem "rspec_junit_formatter"
  gem "rspec-rails", "~>3.8"
  gem "simplecov"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

gem "bootstrap", "~> 4.1.1"
gem "jquery-rails"

# group :production, :staging do
#     gem 'unicorn'
# end
