source 'http://rubygems.org'

gem 'rails', '~> 3.2.11'

gem 'json'
gem 'thin'

group :assets do
  gem 'uglifier'
  gem "therubyracer", ">= 0.10.2", :platform => :ruby
end

gem 'jquery-rails'

gem 'simple_form', '~> 2.0.0'

group :production do
  # gem 'pg' geht nicht weil native extension nicht kompiliert werden kann
end

gem 'sqlite3', :groups => [:test, :development]
gem 'twitter-bootstrap-rails'

gem 'virtus' #fuer form_objects
