require_relative "../../lib/airplane.rb"

describe Airplane do

  let(:my_plane) { my_plane = Airplane.new("cesna", 10, 150) }
  
  describe "#initialization" do
    it "should read back the type" do
      expect(my_plane.type).to eq("cesna")
    end

    it "should read back the wing_loading" do
      expect(my_plane.wing_loading).to eq(10)
    end

    it "should read back the horsepower" do
      expect(my_plane.horsepower).to eq(150)
    end
  end

  describe "#start" do
    it "should turn on the engine if it is not already running" do
      expect(my_plane.start).to eq("airplane started")
    end

    it "should return the engine has already started if already on" do
      my_plane.start
      expect(my_plane.start).to eq("airplane already started")
    end
  end

  describe "#takeoff" do
    it "should change the state of the plane to flying." do
    expect(my_plane.takeoff).to eq("airplane not started, please start")
    end

    it "should launch the airplane if it is already started" do
      my_plane.start
      expect(my_plane.takeoff).to eq("airplane launched")
    end
  end

  describe "#land" do
    it "should change the state of the plane to landed." do
      expect(my_plane.land).to eq("airplane not started, please start")
    end

    it "should only land if the state is currently flying" do
      my_plane.start
      expect(my_plane.land).to eq("airplane already on the ground")
    end

    it "should return whether the plane successfully landed" do
      my_plane.start
      my_plane.takeoff
      expect(my_plane.land).to eq("airplane landed")
    end
  end

end
