source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.1.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '3.11.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '3.1.11'

gem 'telegram-bot'
gem 'telegram-bot-types'

gem 'redis',            '3.3.3'
gem 'redis-namespace',  '1.6.0'
gem 'redis-rails',      '5.0.2'
gem 'redis-store',      '1.4.1'
gem 'redis-rack-cache', '2.0.2'

gem 'rack-attack', '5.0.1'

gem 'dotenv-rails', '2.2.1'

gem 'whenever', :require => false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'pry', '0.10.4'
  gem 'pry-rails'
  gem 'pry-nav'  
  
  gem 'rails-erd'

  # deploy
  gem 'mina', '0.3.8'
  gem 'mina-puma', '0.3.1', require: false
  gem 'mina-multistage', require: false
  gem 'mina-sidekiq', '0.4.1'

end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
