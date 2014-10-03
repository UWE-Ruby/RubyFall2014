require 'rspec/collection_matchers'
require_relative '../../spec_helper'

describe "Playing With Ruby! " do
  context 'when adding numbers' do
    it "should add numbers" do
      (2+2).should eq 4
    end
  end
end