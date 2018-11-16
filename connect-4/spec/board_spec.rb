require 'spec_helper'
require_relative '../lib/board'

RSpec.describe Board do
  let(:board) { board = Board.new }
  
  describe ".new" do
    it "should be initialized as a 6 row grid" do
      expect(board.board.size).to eq(6)
    end
    it "should be initialized with 7 coloumns in each row" do
      expect(board.board[0].size).to eq(7)
    end
    it "should initialized with only ' ' in each slot" do
      expect(board.board[0][0]).to eq(' ')
    end
  end

  describe "#print" do
    it "prints the board" do
      pretty_board = 
        "|1 2 3 4 5 6 7|\n" +
        "|             |\n" +
        "|             |\n" +
        "|             |\n" +
        "|             |\n" +
        "|             |\n" +
        "|             |"

      expect(board.print).to eq(pretty_board)
    end
  end

  describe "#valid?" do
    it "checks if a column is a valid spot" do
      expect(board.valid?(5)).to eq(true)
    end
    
    it "returns false if column is invalid" do
      board.board.each {|row| row[4] = 'R'}
      expect(board.valid?(5)).to eq(false)
    end
  end

  describe "#add_peice" do
    it "reflects the player's turn on the board" do
      added_board = 
        "|1 2 3 4 5 6 7|\n" +
        "|             |\n" +
        "|             |\n" +
        "|             |\n" +
        "|             |\n" +
        "|             |\n" +
        "|        R    |"
      board.add_peice('R', 5)
      expect(board.print).to eq(added_board)
    end
  end
end
