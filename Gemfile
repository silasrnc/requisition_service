source 'https://rubygems.org'

ruby '2.7.3'

gem 'rake'
gem 'hanami', '~> 1.3'
gem 'hanami-model', git: 'https://github.com/hanami/model.git', require: false

# gem 'jsonapi-hanami', github: 'jsonapi-rb/jsonapi-hanami'

gem 'pg'

gem 'jwt'
gem 'bcrypt'

group :development do
  # Code reloading
  # See: https://guides.hanamirb.org/projects/code-reloading
  gem 'shotgun', platforms: :ruby
  gem 'hanami-webconsole'
end

group :test, :development do
  gem 'dotenv', '~> 2.4'

  gem 'rubocop', require: false
  gem 'pry'
  gem 'pry-byebug'
end

group :test do
  gem 'rspec'
  gem 'factory_bot'
  gem 'simplecov'
  gem 'faker'
end

group :production do
  # gem 'puma'
end
