require 'spec_helper'

RSpec.describe Example do
  describe "#add" do
    it "adds two numbers" do
      expect(Example.add(2, 3)).to eq(5)
    end
  end

  describe "#subtract" do
    it "subtracts two numbers" do
      expect(Example.subtract(2, 3)).to eq(-1)
    end
  end
end