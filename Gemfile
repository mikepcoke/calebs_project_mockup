source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.2.10'

# Install the bundler gem
gem 'bundler', '~> 1'

gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby



# Use pg as the database for Active Record
gem 'pg'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Use this as the rails server
gem 'thin'

# Enable nested HStore values
gem 'nested-hstore'

# Devise to manage user accounts
gem 'devise'

group :development, :test do
	# Use debugger
  gem 'pry'

	# Use minitest rails for testing
  gem "minitest-spec-rails"

  # Setup mocha mocking and subbing
  gem "mocha"

	# Factory Girl test data creation
  gem "factory_girl_rails"
end

group :test do
  # Mock web requests
  gem "webmock"

end

group :development do
	# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
	gem 'spring'
end
