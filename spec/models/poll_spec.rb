require 'spec_helper'

describe Poll do
  let(:poll) { Poll.new(title: "title") }

  describe "#initialize" do
    it "saves in DB when initialize with valid inputs" do
      expect{ poll.save }.to change{ Poll.count }.by(1)
    end

    it "cannot save to DB when initialize with no input" do
      expect{ Poll.create }.to_not change{ Poll.count }
    end
  end



end