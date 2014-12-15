require_relative 'book'
require_relative '../../spec_helper'

describe Book do


    it "should count the books in our library" do 
      Book.book_count.should eq 1 
    end 

  context "::book_count" do

    it "should count how many books have been created" do
      Book.new
      Book.new
      Book.new
      Book.book_count.should eq 3
    end

  end

  context "::new" do

    it "should set some defaults" do
      Book.new.title.should eq "Not Set"
    end

    it "should allow us to set the page count" do
      book = Book.new "Harry Potter", 5
      book.page_count.should eq 5
    end

  end

  context "#title" do

    before :each do
      @book = Book.new
    end

    it "should have a title" do
      @book.should respond_to "title"
    end


    it "should have a default title of unknown" do 
      @my_book.title should eq "unknown"
    end 

    it "should allow me to set the title" do
      @book.title = "Snow Crash"
      @book.title.should eq "Snow Crash"
    end

    it "should allow us to set the title on a new instance" do 
      book = Book.new "Programming Ruby" 

      book.title.should eq "Programming Ruby" 
    end 



  end

end