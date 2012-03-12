require 'spec_helper'

describe Psychomatrix::CoreExt::Integer do
  context "#digitize" do
    it "returns valid array" do
      23.digitize.should eq([2, 3])
    end
  end

  context "#to_digit" do
    it "returns self if <10" do
      7.to_digit.should eq(7)
    end

    it "returns 3 for 39" do
      39.to_digit.should eq(3)
    end

    it "returns 12 when keep argument is 12" do
      39.to_digit(12).should eq(12)
    end
  end
end
