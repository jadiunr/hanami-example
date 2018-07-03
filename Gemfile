source "https://rubygems.org"

gem "hanami", "~> 1.2"
gem "hanami-model", "~> 1.2"
gem "rake"

gem "sqlite3"

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem "hanami-webconsole"
  gem "shotgun", platforms: :ruby
end

group :test, :development do
  gem "dotenv", "~> 2.0"
  gem "onkcop", require: false # rubocopの解析ルール設定
  gem "rubocop", require: false # コードの静的解析ツール
end

group :test do
  gem "capybara"
  gem "minitest"
end

group :production do
  # gem 'puma'
end
