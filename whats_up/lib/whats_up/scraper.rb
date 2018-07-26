class Scraper
  
  BASE_URL = "https://www.washingtonpost.com/regional/"
  def self.scrape_news
    headlines = []
    doc = Nokogirl::HTML(open(BASE_URL))
    
    doc.css('.skin skin-card large def-feed pm-content').each do |news_doc|
      title = news_doc.css("pm-content a headline").text
      url = news_doc.css("pm-content a").attribute("href").value
      headlines << {title: title, url: url}
    end
   headlines
  end
  
end