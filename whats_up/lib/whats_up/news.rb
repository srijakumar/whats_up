class WhatsUp::News
  attr_accessor :title, :author, :url, :description
  @@all = []

  def initialize(title, url)
    @url = url
    @title = title
    @@all << self #everytime the iterator in Scraper class creates a new instance, it gets stored in @@all
  end

  def self.all
    @@all
  end


end
