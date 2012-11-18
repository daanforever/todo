source 'https://rubygems.org'

gem 'rails', '3.2.8'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
  gem 'less-rails'
  gem 'twitter-bootstrap-rails' # good web bootstrap from twitter
end

gem 'jquery-rails'
gem 'thin'
gem 'dynamic_form'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'   # strong encryption


gem 'devise'                    # Authentication
gem 'cancan'                    # Authorization


group :development do
  gem 'hirb'                    # pretty output in rails console
  gem 'spork'                   # faster to start rspec
  gem "rspec-rails", "~> 2.0"   # test suite
  gem 'guard-rspec'             # automaticaly test runner
  gem 'rb-inotify'
end

group :test do
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem "rspec-rails", "~> 2.0"   # test suite
end

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
