require "spec_helper"

describe Box do
  let(:owner) {Occupant.new("Dara","Hoy")}

  describe ".new" do
    it "takes an occupant object returns the name of the owner" do
      box = Box.new(owner)
      expect(box.owner).to eq("Dara Hoy")
    end
  end

end