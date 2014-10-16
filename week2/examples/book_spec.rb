require_relative '../../spec_helper' 
#when you say 'require' it's like running this code right here 
#require knows about the .rb extension 
require_relative 'book' 


describe Book do 
 
    #create a new instance of book class 
  before :each do 
    @my_book = Book.new 
  end 

  it "should have a title" do 
    #see if it should respond to title 
    @my_book.should respond_to? "title" 

  end

  it "should not have  be nil" do 
    @my_book.title.should_not be_nil
  end 

  it "Should have a non empty title" do 
    @my_book.title.size.should > 0
  end 

  it "should let me set the title" do 
    @my_book.title = "Harry Potter" 
    @my_book.title.should eq "Harry Potter" 
  end 

end 