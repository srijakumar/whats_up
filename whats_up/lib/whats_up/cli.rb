#interacting with the user

class WhatsUp::CLI

  def start
      puts ""
      puts "What's up with your city?"
      puts ""
      #displays a list of headlines
      WhatsUp::Scraper.scrape_news
      display_headlines
  end

  def display_headlines
    puts "Here are the 5 most read news headlines for today!"
    puts ""
    news_array = WhatsUp::News.all
    news_array.each.with_index(1) do|news, index|
      puts "#{index}. #{news.title}"
      end
    puts""
    puts "Please input 1-5 select a headline to read the article:"
    input = gets.strip
    index = input.to_i - 1

    if input<1 || input > 5 

    #What if they enter a number less or greater than 5

    news = WhatsUp::News.all[index]


    if !news.author || !news.description
      WhatsUp::Scraper.scrape_news_details(news)
    end

  #  WhatsUp::Scraper.scrape_news_details(news)
    puts "Here is the article:"
    puts news.title
    puts ""
    puts "By: " + news.author
    puts ""
    puts news.description
    display_headlines

    if input = "exit"
      exit
    end
  end

#Build a method to exit out the program if user types in  "exit"
#Case =
#when "exit"
#exit
#end

end

