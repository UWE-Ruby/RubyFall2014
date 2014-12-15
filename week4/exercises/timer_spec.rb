require_relative '../../spec_helper'
require_relative 'timer' 

describe Timer do 

  it "should run our code" do 
    flag = false 
    Timer.time_code do 
      flag = true 
    end 
    expect(flag).to be_true
    flag.should eq true
    end 
  end 

  it "should return the run time for our code" do 

    run_time = Timer.time_code do 
      sleep(3)
      nil
    end 
    run_time.should be_within(0.1).of(3.0)
  end 


  it "should run code mulitlpe times" do 
    count = 0 
    Timter.time_code(10) do 
      count += 1 
    end 
    count.should eq 10 
  end 
end