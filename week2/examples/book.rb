class Book 
  
  @@book_count = 0 

  #create a self. method so that if you change class name it cascades down 
  def self.book_count 
    @@book_count 
  end

  attr_accessor :title, :pages, :author 

  def initialize title = "unknown", author: "uknown" , pages: 0
    @title = title 
    @pages = pages
    @author = author 
    @@book_count += 1
  end 

  def pages 
    @pages 
  end 

  def book_count 
    @@book_count 
  end 

end 