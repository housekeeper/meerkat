source 'https://rubygems.org'

gem 'rails', '3.2.8'

gem 'jquery-rails'
gem 'json'
gem 'pg'
gem 'sass-rails', '~> 3.2.3'
gem 'coffee-rails', '~> 3.2.1'

# Cosmetic Gems
gem "haml"
gem "bootstrap_builder", :git => "https://github.com/housekeeper/bootstrap_builder.git"
gem 'font-awesome-rails'

# Authentication
gem "devise", "~> 2.1.2"

# Functional Gems
gem 'acts_as_commentable'

# Versioning
gem 'paper_trail', '~> 2'

# Javascript runtime
gem 'execjs'
gem 'therubyracer'

# Custom gems

group :test, :development do
  gem 'haml-rails', '>= 0.3.5'
  gem "rspec-rails", "~> 2.10.1"
  gem "email_spec", "~> 1.2.1"
  gem "factory_girl_rails", "~> 3.5.0"
  gem "cucumber-rails"
  gem "capybara", "= 2.0.3"
  gem "shoulda", "~> 3.1.1"
  gem "database_cleaner", ">= 0.6.7"
  gem "minitest"
  gem 'ffaker', '>= 1.12.0'
end

# Everything in assets is needed by Heroku
group :assets do
  gem "bootstrap_builder", :git => "https://github.com/housekeeper/bootstrap_builder.git"
  gem 'uglifier', '>= 1.0.3'
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'font-awesome-sass-rails'
end

# Everything in production is required by Heroku
group :production do
  gem "thin"
end
