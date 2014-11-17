require_relative '../../spec_helper'
require_relative 'book'

describe Book do

  before :each do
    @my_book = Book.new
  end

  it "should count the books in our library" do
    Book.new
    Book.book_count.should eq 2
  end

  it "should have a title" do
    @my_book.should respond_to "title"
  end

  it "should not have a nil title" do
    @my_book.title.should_not be_nil
  end

  it "should have a non empty title" do
    @my_book.title.size.should > 0
  end

  it "should have a default title of unknown" do
    @my_book.title.should eq 'unknown'
  end

  it "should allow us to set the title on a new instance" do
    book = Book.new "Programming Ruby"
    book.title.should eq "Programming Ruby"
  end

  it "should let me set a title" do
    @my_book.title = "Harry Potter"
    @my_book.title.should eq "Harry Potter"
  end

end