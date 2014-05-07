require_relative 'template'

describe Resize do
  include Resize
  it "should resize picture" do
  	expect(resize(100, 640, 480)).should == {:h=>75, :w=>100}
  	expect(resize(100, 35, 150)).should == {:h=>100, :w=>23.33}
	end
end
