require_relative '../../spec_helper'
require_relative 'book_inclass'


describe Book do

  before :each do
    @my_book = Book.new
  end

  it "should have a title" do
    my_book = Book.new
    my_book.should respond_to "title"
  end

  it "should not have a blank title" do
    my_book = Book.new
    my_book.title.should_not be_nil
  end

  it "should have a non empty title" do
  end
  
  it "should let me set a title" dp
    @my_book.title = "Harry Potter"

end
