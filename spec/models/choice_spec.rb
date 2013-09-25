require 'spec_helper'

describe Choice do
  let(:question) { Question.create(title: "question title")}
  let(:choice) { question.choices.new(title: "choice title") }

  describe "#initialize" do
    it "saves in DB when initialize with valid inputs" do
      expect{ choice.save }.to change{ Choice.count }.by(1)
    end

    it "cannot save to DB when initialize with no input" do
      expect{ Choice.create }.to_not change{ Choice.count }
    end
  end



end