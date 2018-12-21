require "spec_helper"

describe Challenge do
  let(:challenge) { Challenge.new("Challenger", "body") }

  describe ".new" do
    it "should inherit from Lesson" do
      expect(challenge).to be_a(Lesson)
    end
  end

  describe "#submittable?" do
    it "should return true" do
      expect(challenge.submittable?).to eq(true)
    end
  end

end