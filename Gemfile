source 'https://rubygems.org'


# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
# gem 'therubyracer', platforms: :ruby
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'devise'
gem 'ffaker'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'materialize-sass'
gem 'pg'
gem 'puma', '~> 3.0'
gem 'rails', '~> 5.0.1'
gem 'sass-rails', '~> 5.0'
gem 'simple_form'
gem 'turbolinks', '~> 5'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'uglifier', '>= 1.3.0'


gem 'rails_best_practices'
gem 'rails-controller-testing'
gem 'rubocop', require: false
gem 'rubycritic', require: false


group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
end

group :development do
  gem 'brakeman', require: false
  gem 'bullet'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end