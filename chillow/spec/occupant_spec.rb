require 'spec_helper'

describe Occupant do
  let(:student) { Occupant.new("Tyler", "Durden") }

  describe "#first_name" do
    it "returns occupant's first name" do
      expect(student.first_name).to eq("Tyler")
    end
  end

  describe "#last_name" do
    it "returns occupant's last name" do
      expect(student.last_name).to eq("Durden")
    end
  end
end
