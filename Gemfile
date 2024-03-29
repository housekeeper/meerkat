source 'https://rubygems.org'

gem 'jquery-rails', '2.0.3'
gem 'json'


# Core Gems
gem 'pg'
gem 'paper_trail', '~> 2'

gem 'sass-rails',   '~> 3.2.5'
gem 'coffee-rails', '~> 3.2.2'

# Cosmetic Gems
gem "haml"
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
gem "bootstrap_builder", :git => "https://github.com/housekeeper/bootstrap_builder.git"
gem "flat_ui",           :git => "https://github.com/daveed/flat_ui"

group :test, :development do
  gem 'haml-rails', '>= 0.3.5'
  gem "rspec-rails", "~> 2.10.1"
  gem "email_spec", "~> 1.2.1"
  gem "factory_girl_rails", "~> 3.5.0"
  gem "capybara", "= 2.0.3"
  gem "shoulda", "~> 3.1.1"
  gem "database_cleaner", ">= 0.6.7"
  gem "minitest"
  gem 'ffaker', '>= 1.12.0'
end

group :test do
  gem "cucumber-rails"
end


# Everything in assets is needed by Heroku
group :assets do
  gem "bootstrap_builder", :git => "https://github.com/housekeeper/bootstrap_builder.git"
  gem 'uglifier', '>= 1.0.3'
  gem 'sass-rails',   '~> 3.2.5'
  gem 'coffee-rails', '~> 3.2.2'
  gem 'font-awesome-sass-rails'
end

# Everything in production is required by Heroku
group :production do
  gem "puma"
end
