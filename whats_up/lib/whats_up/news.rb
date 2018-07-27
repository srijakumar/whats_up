class WhatsUp::News
  attr_accessor :title, :author, :url, :description
  
  def initialize(title, url)
    @url = url
    @title = title
  end
 
  
  
end