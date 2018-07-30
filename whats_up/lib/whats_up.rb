#environment file

module WhatsUp
  # Your code goes here...
end

require 'nokogiri'
require 'open-uri'
require 'pry'
require_relative "./whats_up/version" #require elative is for files within. Require is for files outside the gem
require_relative "./whats_up/cli"
require_relative "./whats_up/news"
require_relative "./whats_up/scraper"
