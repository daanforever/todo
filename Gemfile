source 'https://rubygems.org'

gem 'rails', '3.2.8'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
gem 'mysql2'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'jquery-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
  gem 'less-rails'
  gem 'twitter-bootstrap-rails' # good web bootstrap from twitter
end

gem 'thin'
gem 'dynamic_form'
gem 'simple_form'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'   # strong encryption

gem 'devise'                    # Authentication
gem 'cancan'                    # Authorization
gem 'rolify'                    # Roles

group :development do
  gem "rails-erd"               # rails documentation diagrams
end

group :test, :development do
  gem 'hirb'                    # pretty output in rails console
  gem 'rb-inotify', '~> 0.8.8'  # helper gem for guard
  gem 'capistrano'              # deploy solution
end

group :test do
  gem "rspec-rails", "~> 2.0"   # test suite
  gem 'guard-rspec'             # automaticaly test runner
  gem 'guard-spork'             # automaticaly test runner with spork
  gem 'spork'                   # speed up test running
  gem 'factory_girl_rails'      # fixtures replacement
  gem 'capybara'                # user expirience testing
  gem 'database_cleaner'        # helper gem for rspec
end

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
