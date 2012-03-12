require 'spec_helper'

describe Psychomatrix do
  context ".calculate_for" do
    it "returns an Calculation instance" do
      subject.calculate_for(Time.now).should be_a(Psychomatrix::Calculation)
    end
  end
end
