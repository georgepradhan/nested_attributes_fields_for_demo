require 'spec_helper'

describe Question do
  let(:poll) {Poll.create(title: "poll title")}
  let(:question) { poll.questions.new(title: "title") }

  describe "#initialize" do
    it "saves in DB when initialize with valid inputs" do
      expect{ question.save }.to change{ Question.count }.by(1)
    end

    it "cannot save to DB when initialize with no input" do
      expect{ Question.create }.to_not change{ Question.count }
    end
  end



end