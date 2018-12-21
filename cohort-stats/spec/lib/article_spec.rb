require "spec_helper"

describe Article do
  let(:article) {Article.new("article", "body")}

  describe ".new" do
    it "should inherit from Lesson class" do
      expect(article).to be_a(Lesson)
    end
  end
end