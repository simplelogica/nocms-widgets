source "https://rubygems.org"

# Declare your gem's dependencies in nocms_widgets.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

group :development, :test do
  gem 'faker'
end

group :test do
  gem 'rspec-rails', '~> 3.0.0.beta'
  gem 'factory_girl'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'poltergeist'
end

gem 'nocms-blocks', git: 'https://github.com/simplelogica/nocms-blocks.git', branch: 'master'
gem 'globalize'