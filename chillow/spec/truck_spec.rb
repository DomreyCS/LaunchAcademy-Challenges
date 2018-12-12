require "spec_helper"

describe Truck do
  let(:truck) {Truck.new(120)}
  let(:box) {{owner: "Dara"}}

  describe "#capacity" do
    it "returns the box capacity for the truck" do
      expect(truck.capacity).to eq(120)
    end

    it "should default to 100 box capacity if not given an argument" do
      another_truck = Truck.new
      expect(another_truck.capacity).to eq(100)
    end
  end

  describe "#boxes" do
    it "should be an array of boxes" do
      expect(truck.boxes).to be_an(Array)
    end
  end

  describe "#full?" do
    it "returns true when the truck is full" do
      truck.boxes = Array.new(120, box)
      expect(truck.full?).to eq(true)
    end
  end

  describe "#add_box" do
    it "adds a box to the boxes array" do
      truck.add_box(box)
      expect(truck.boxes.count).to eq(1)
    end
  end

  describe "#remove_box" do 
    it "removes a box from the boxes array" do
      truck.add_box(box)
      truck.remove_box
      expect(truck.boxes.count).to eq(0)
    end
  end

  describe "#unload" do
    it "should remove all boxes matching the owner name provided as an argument" do
      truck.boxes = [{owner: "Dara"},{owner: "Elise"},{owner: "Dara"}]
      truck.unload "Dara"
      expect(truck.boxes).not_to include({owner: "Dara"})
    end
  end
end
