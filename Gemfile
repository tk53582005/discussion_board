source "https://rubygems.org"

# Bundle edge Rails instead:
# gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.2.2", ">= 7.2.2.2"

# The original asset pipeline for Rails
gem "sprockets-rails"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.6"

# Use the Puma web server
gem "puma", ">= 5.0"

# Use JavaScript with ESM import maps
gem "importmap-rails"

# Hotwire (Turbo + Stimulus)
gem "turbo-rails"
gem "stimulus-rails"

# Build JSON APIs with ease
gem "jbuilder"

# Windows does not include zoneinfo files
gem "tzinfo-data", platforms: %i[windows jruby]

# Reduces boot times through caching
gem "bootsnap", require: false

# Authentication
gem "devise"

group :development, :test do
  # Debugging
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"

  # Security static analysis
  gem "brakeman", require: false

  # Omakase Ruby styling
  gem "rubocop-rails-omakase", require: false
end

group :development do
  # Console on exception pages
  gem "web-console"
end

group :test do
  # System testing
  gem "capybara"
  gem "selenium-webdriver"
end

gem "tailwindcss-rails", "~> 4.4"
