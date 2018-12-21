require "spec_helper"

describe Lesson do
  let(:lesson) { Lesson.new("Code", "body?") }

  describe ".new" do
    it "takes a name and body as arguments" do
      expect(lesson).to be_a(Lesson)
    end
  end

  describe "#name" do
    it "has an attribute reader and writer for name" do
      expect(lesson.name).to eq("Code")
    end
  end

  describe "body" do
    it "has an attribute reader and writer for body" do
      expect(lesson.body).to eq("body?")
    end
  end

  describe "#submittable?" do
    it "should return false" do
      expect(lesson.submittable?).to eq(false)
    end
  end
end