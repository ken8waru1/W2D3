require "hanoi_game"

RSpec.describe "Hanoi" do
  h = Hanoi.new 
  describe "#initialize" do 
    it "should initialize @stacks instance variable" do
      expect(h.stacks).to eq([[3, 2, 1], [], []])
    end
  end

  describe "#valid_move?" do
    # it "should check that the user is not pulling from an empty pile" do
    #   expect(h.valid_move?(1, 0)).to eq(false)
    # end

    it "should return true if the user attempts to move a disc to an empty pile" do
      expect(h.valid_move?(0, 1)).to eq(true) 
    end

    it "should return false if the user attempts to move a disc from an empty pile" do
      expect(h.valid_move?(1, 0)).to eq(false)
    end
  end

end