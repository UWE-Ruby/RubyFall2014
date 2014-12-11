# spec file to test the math of the temperature conversion

require 'F2C.rb'

describe Convert do
	
	it "Fahrenheit to Celsius" do
      x = Convert.F2C(83)
      #expect(x).to eq  "83 Fahrenheit is 28 Celsius"
  	  x.should eq "83 Fahrenheit is 28 Celsius"	  
    end

    it "Celsius to Fahrenheit" do
      x = Convert.C2F(18)
      x.should eq "18 Celsius is 64 Fahrenheit"
    end

end
