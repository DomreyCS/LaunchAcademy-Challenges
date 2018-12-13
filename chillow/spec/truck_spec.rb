require "spec_helper"

describe Truck do
  let(:truck) {Truck.new(120)}
  let(:box) {{owner: "Dara"}}

  describe "#max" do
    it "returns the max  capacity for the truck" do
      expect(truck.max).to eq(120)
    end

    it "should default to 100 box max if not given an argument" do
      another_truck = Truck.new
      expect(another_truck.max).to eq(100)
    end
  end

  describe "#current" do
    it "should be an array" do
      expect(truck.current).to be_an(Array)
    end
  end

  describe "#full?" do
    it "returns true when the truck is full" do
      truck.current = Array.new(120, box)
      expect(truck.full?).to eq(true)
    end
  end

  describe "#add" do
    it "adds a box to the current array" do
      truck.add(box)
      expect(truck.current.count).to eq(1)
    end
  end

  describe "#remove" do 
    it "removes a box from the current array" do
      truck.add(box)
      truck.remove
      expect(truck.current.count).to eq(0)
    end
  end

  describe "#unload" do
    it "should remove all current matching the owner name provided as an argument" do
      truck.current = [{owner: "Dara"},{owner: "Elise"},{owner: "Dara"}]
      truck.unload "Dara"
      expect(truck.current).not_to include({owner: "Dara"})
    end
  end
end
