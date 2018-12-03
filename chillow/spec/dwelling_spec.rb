require 'spec_helper'

describe Dwelling do
  let(:warren_tower){ Dwelling.new }

  describe "#address" do
    it "returns the address" do
      warren_tower.address = "100 Newbury St"
      expect(warren_tower.address).to eq("100 Newbury St")
    end
  end

  describe "#state" do
    it "returns the state" do
      warren_tower.state = "MA"
      expect(warren_tower.state).to eq("MA")
    end
  end

  describe "#city_or_town" do
    it "returns the name of it's city or town" do
      warren_tower.city_or_town = "Boston"
      expect(warren_tower.city_or_town).to eq("Boston")
    end
  end

  describe "#zip_code" do
    it "returns the zip code" do
      warren_tower.zip_code = 02215
      expect(warren_tower.zip_code).to eq(02215)
    end
  end
end