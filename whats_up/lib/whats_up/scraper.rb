class WhatsUp::Scraper

  BASE_URL = "https://www.washingtonpost.com/regional/"
  def self.scrape_news
    doc = Nokogirl::HTML(open(BASE_URL))
    doc.css('.skin skin-card large def-feed pm-content').each do |news_doc|
      title = news_doc.css("pm-content a headline").text.strip
      url = news_doc.css("pm-content a").attribute("href").value
      binding.pry
      WhatsUp::News.new(title, url)
      #this iterates and created a new instance of the news headline that is initialized in the News.rb file
      #By the end of this itirator we should have 5 headlines instances
    end
  end

  def self.scrape_news_details(news)
    url = news.url
    doc = Nokogiri::HTML(open(url))
    #get author name and get description
  end


end
