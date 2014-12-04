# spec file to test the math of the temperature conversion

require './F2C.rb'

describe Convert do
	
	it "converts Fahrenheit to Celsius" do
      x = Convert.F2C(83)
      expect(x).to eq "83 Fahrenheit is 28 Celsius"
    end

    it "converts Celsius to Fahrenheit" do
      x = Convert.C2F(18)
      expect(x).to eq "18 Celsius is 64 Fahrenheit"
    end

end