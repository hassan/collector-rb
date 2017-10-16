# frozen_string_literal: true
source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# gem "rails"

gem 'rails'
gem 'pg'
gem 'puma'
gem 'jbuilder'
gem 'newrelic_rpm'
group :development, :test do
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'fabrication'
  gem 'faker'
  gem 'pry-rails'
  gem 'awesome_print'
end

group :development do
  gem 'brakeman'
  gem 'sandi_meter'
  gem 'railroady'
  gem 'capistrano-rails'
end
