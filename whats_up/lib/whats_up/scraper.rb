class WhatsUp::Scraper

  BASE_URL = "https://www.washingtonpost.com/regional/"
  def self.scrape_news
    doc = Nokogiri::HTML(open(BASE_URL))

    doc.css('.skin .pm-content').each do |news_doc|
      title = news_doc.css("a .headline").text.strip
      url = news_doc.css("a").attr("href").value

      WhatsUp::News.new(title, url)
      #this iterates and created a new instance of the news headline that is initialized in the News.rb file
      #By the end of this itirator we should have 5 headlines instances
    end
  end

  def self.scrape_news_details(news)
    url = news.url
    doc = Nokogiri::HTML(open(url))
    news.author = doc.css('a span').text
    news.description = doc.css('.dateline').text.strip
      binding.pry
    #get author name and get description
  end


end
