require_relative "../../lib/airplane"

describe Airplane do
  let(:my_plane) { my_plane = Airplane.new("cesna", 10, 150) }

  describe "#initialization" do
    it "takes in the type, wing loading, and horsepower as arguments" do
      expect(my_plane).to be_a(Airplane)
      expect(my_plane.type).to eq("cesna")
      expect(my_plane.wing_loading).to eq(10)
      expect(my_plane.horsepower).to eq(150)
    end
  end

  describe "#start" do
    it "should turn on the engine if it is not already running" do
      expect(my_plane.start).to eq("airplane started")
    end

    it "should return whether the engine was just started or if it has already been running" do
      my_plane.start
      expect(my_plane.start).to eq("airplane already started")
    end
  end

  describe "#takeoff" do
    it "should change the state of the plane to flying" do
      my_plane.start
      my_plane.takeoff
      expect(my_plane.flying).to eq(true)
    end

    it "should only take off if the engine is already running" do
      expect(my_plane.takeoff).to eq("airplane not started, please start")
    end
    
    it "should return whether the plane has taken off or not" do
      expect(my_plane.takeoff).to eq("airplane not started, please start")

      my_plane.start
      my_plane.takeoff
      expect(my_plane.takeoff).to eq("airplane launched")
    end
  end

  describe "#land" do
    it "should change the state of flying to false" do
      my_plane.start
      my_plane.takeoff
      my_plane.land
      expect(my_plane.flying).to eq(false)
    end

    it "should only land if it is currently flying" do
      my_plane.start
      expect(my_plane.land).to eq("airplane already on the ground")

      my_plane.start
      my_plane.takeoff
      expect(my_plane.land).to eq("airplane landed")
    end

    it "should return whether the plane successfully landed or not (or whether it needs to be started)" do
      expect(my_plane.land).to eq("airplane not started, please start")

      my_plane.start
      my_plane.takeoff
      expect(my_plane.land).to eq("airplane landed")

      my_plane.start
      expect(my_plane.land).to eq("airplane already on the ground")
    end
  end

  describe '#fuel' do
    it "should be set when the plane is initialized" do
      expect(my_plane.fuel).to eq(100)
    end

    it "should have a cost to start the plane" do
      my_plane.start
      expect(my_plane.fuel).to eq(99)
    end

    it "should have a cost to takeoff" do
      my_plane.start
      my_plane.takeoff
      expect(my_plane.fuel).to eq(91)
    end

    it "should have a cost to land" do
      my_plane.start
      my_plane.takeoff
      my_plane.land
      expect(my_plane.fuel).to eq(87)
    end

    it "should return a message if start cannot be completed due to a lack of fuel" do
      my_plane.fuel = 0
      expect(my_plane.start).to eq("Not enough fuel to start")
    end

    it "should return a message if takeoff cannot be completed due to a lack of fuel" do
      my_plane.fuel = 8
      my_plane.start
      expect(my_plane.takeoff).to eq("Not enough fuel for takeoff")
    end

    it "should return a message if landing cannot be completed due to a lack of fuel" do
      my_plane.fuel = 12
      my_plane.start
      my_plane.takeoff
      expect(my_plane.land).to eq("Not enough fuel to land")
    end
  end
end
