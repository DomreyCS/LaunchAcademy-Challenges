require "spec_helper"

describe Apartment do
  let(:warren_suite) { Apartment.new }
  let(:john) { Occupant.new("John", "Doe") }

  describe "#address" do
    it "returns the address" do
      warren_suite.address = "100 Newbury St"
      expect(warren_suite.address).to eq("100 Newbury St")
    end
  end

  describe "#state" do
    it "returns the state" do
      warren_suite.state = "MA"
      expect(warren_suite.state).to eq("MA")
    end
  end

  describe "#city_or_town" do
    it "returns the name of it's city or town" do
      warren_suite.city_or_town = "Boston"
      expect(warren_suite.city_or_town).to eq("Boston")
    end
  end

  describe "#zip_code" do
    it "returns the zip code" do
      warren_suite.zip_code = 02215
      expect(warren_suite.zip_code).to eq(02215)
    end
  end

  describe "#rent" do
    it "returns the rent amount" do
      warren_suite.rent = 800
      expect(warren_suite.rent).to eq(800)
    end
  end

  describe "#lease_start_date" do
    it "returns the start date of the lease" do
      warren_suite.lease_start_date = "Sun 04 Feb 2001"
      expect(warren_suite.lease_start_date).to eq("Sun 04 Feb 2001")
    end
  end

  describe "#lease_end_date" do
    it "returns the start date of the lease" do
      warren_suite.lease_end_date = "Sun 04 Feb 2002"
      expect(warren_suite.lease_end_date).to eq("Sun 04 Feb 2002")
    end
  end

  describe "#full?" do
    it "returns false when occupants are less than max occupancy" do  
      warren_suite.maximum_occupants =  4   
      expect(warren_suite.full?).to eq(false)
    end

    it "returns true when occupants is equal to max occupancy" do
      warren_suite.maximum_occupants =  4
      4.times do 
        warren_suite.add_roomate(Occupant.new("John", "Doe"))
      end
      expect(warren_suite.full?).to eq(true)
    end
  end

  describe "#add_roomate" do
    it "adds occupant to the apartment" do
      warren_suite.add_roomate("John")
      expect(warren_suite.occupants).to include("John")
    end

    it "raises an error when no occupancy" do
      warren_suite.maximum_occupants = 4
      4.times do
        warren_suite.add_roomate("John")
      end
      expect{ warren_suite.add_roomate("John") }.to raise_error(RuntimeError, "No rooms available!")
    end
  end

  describe "#remove_roomate" do
    it "removes the occupant from the apartment" do
      warren_suite.maximum_occupants = 4
      warren_suite.add_roomate(john)
      warren_suite.remove_roomate("John", "Doe")
      expect(warren_suite.occupants).not_to include(john)
    end
  end
end