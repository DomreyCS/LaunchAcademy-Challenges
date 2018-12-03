require "spec_helper"

describe House do
  let(:beacon_house) { House.new }

  describe "#address" do 
    it "returns the address" do
      beacon_house.address = "100 Beacon Hill"
      expect(beacon_house.address).to eq("100 Beacon Hill")
    end
  end

  describe "#city_or_town" do
    it "return the city or town" do
      beacon_house.city_or_town = "Boston"
      expect(beacon_house.city_or_town).to eq("Boston")
    end
  end

  describe "#state" do
    it "returns the state" do
      beacon_house.state = "MA"
      expect(beacon_house.state).to eq("MA")
    end
  end

  describe "#zip_code" do
    it "returns the zip code" do
      beacon_house.zip_code = 02215
      expect(beacon_house.zip_code).to eq(02215)
    end
  end

  describe "#asking_price" do
    it "returns the asking price of the house" do
      beacon_house.asking_price = 500000
      expect(beacon_house.asking_price).to eq(500000)
    end
  end
end