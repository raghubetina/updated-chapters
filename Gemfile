source "https://rubygems.org"

ruby "2.6.5"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "bootsnap", ">= 1.1.0", require: false
gem "bootstrap", "~> 4.2.1"
gem "dalli"
gem "devise"
gem "goldiloader"
gem "jbuilder", "~> 2.5"
gem "jquery-rails"
gem "jquery-ui-rails"
gem "kramdown"
gem "kramdown-parser-gfm"
gem "meta-tags"
gem "octokit", "~> 4.0"
gem "omniauth-github"
gem "pg", "~> 0.18"
gem "puma", "~> 3.7"
gem "rack-canonical-host"
gem "rails", "~> 5.2.2"
gem "rollbar"
gem "rouge"
gem "sassc-rails"
gem "skylight"
gem "uglifier", ">= 1.3.0"

group :development, :test do
  gem "awesome_print"
  gem "better_errors"
  gem "binding_of_caller"
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "dotenv-rails"
  gem "pry-rails"
end

group :development do
  gem "annotate"
  gem "bullet"
  gem "draft_generators", github: "firstdraft/draft_generators"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "rails-erd"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

