class Book

  @@book_count = 0

  def self.book_count
    @@book_count
  end

  attr_accessor :title, :pages, :author

  def initialize title = "unknown", author: "unknown", pages: 0
    @pages = pages
    @author = author
    @title = title
    @@book_count += 1
  end

  def pages
    @pages
  end


  def book_count
    @@book_count
  end

end