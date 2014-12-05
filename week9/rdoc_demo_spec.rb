require 'simplecov'
SimpleCov.start

require_relative 'rdoc_demo'

describe Hat do 
  it "should have color" do
    hat = Hat.new "Red", "Large"
    expect(hat.color).to eq "Red"
  end
end