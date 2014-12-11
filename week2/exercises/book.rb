
module ReneesLibrary
  class Book
    attr_accessor :title
    def title
      @title
    end
    def title=t
      @title = t
    end
    attr_reader :page_count

    @@book_count = 0

    def self.book_count
      @@book_count
    end

    def initialize title = "Not Set", page_count = 0
      @@book_count += 1
      @page_count = page_count
      @title = title
    end

  end
end

class Book
  def self.book_count
    19
  end
end