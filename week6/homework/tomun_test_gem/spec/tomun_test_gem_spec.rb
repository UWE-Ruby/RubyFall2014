require_relative '../lib/tomun_test_gem'

describe "Test Gem" do

    it "Runs" do
      expect { run }.to output("Tomun's test gem\n").to_stdout
    end
end
