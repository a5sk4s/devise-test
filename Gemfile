source 'http://rubygems.org'

gem 'rails', '~> 3.0.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
  gem 'sqlite3-ruby', :require => 'sqlite3'
end
# Heroku needs postgres
group :production do
  gem 'pg'
end

gem 'haml-rails', '~> 0.2'
gem 'jquery-rails', '~> 0.1.2'
gem 'formtastic', '~> 1.1.0'
gem 'devise', '~> 1.1.2'

group :development, :test do
  gem 'rspec-rails', '>= 2.0.0.beta.22'
  gem 'cucumber-rails', '~> 0.3.2'
  gem 'factory_girl_rails', '~> 1.0'
  gem 'autotest', '~> 4.3.2'
  gem 'webrat', '~> 0.7.2.beta.1'
end

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end
