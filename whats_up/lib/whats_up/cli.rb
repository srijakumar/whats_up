#interacting with the user

class WhatsUp::CLI
  
  def start
      puts "What's up with your city?"
      puts ""
      puts "Here are the news headlines for today!"
      #displays a list of headlines
      Scraper.scrape_news
  end
end