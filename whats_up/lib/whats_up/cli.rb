#interacting with the user

class WhatsUp::CLI

  def start
      puts "What's up with your city?"
      puts ""
      #displays a list of headlines
      WhatsUp::Scraper.scrape_news
      display_headlines
  end

  def display_headlines
    puts "Here are the most read news headlines for today!"
    puts ""
    news_array = WhatsUp::News.all
    news_array.each.with_index(1) do|news, index|
      puts "#{index}. #{news.title}"
      end
    puts""
    puts "Please select a headline to read the article:"
    input = gets.strip
    index = input.to_i - 1
    news = WhatsUp::news.all[index]

    if !news.author || !news.description
      WhatsUp::Scraper.scrape_news_details(news)
    end

  #  WhatsUp::Scraper.scrape_news_details(news)
    puts "Here is the article:"
    puts news.author
    puts news.description
    display_headlines
  end

#Build a method to exit out the program if user types in  "exit"

end
