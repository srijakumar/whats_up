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

  def self.search_description(keyword)
    #return an array of all news article objects that contain keyword in the description
    #return only one article in case of multiple hits
    arr = []
    #x = 0
    # if WhatsUp::News.all[x] !== keyword
    #  x += 1
    # else
    #  arr << @description
    # end
    #
    # "hello"

    WhatsUp::News.all.each do |article|
      if article.description.include?(keyword)
        arr << article
      end
    end
  arr
end

end
