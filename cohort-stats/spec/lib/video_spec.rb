require "spec_helper"

describe Video do
  let(:video) {Video.new('www.url.com')}

  describe ".new" do
    it "takes in a url as an argument" do
      expect(video).to be_a(Video)
    end
  end

  describe "#url" do
    it "has an attribute reader for url" do
      expect(video.url).to eq("www.url.com")
    end
  end
end