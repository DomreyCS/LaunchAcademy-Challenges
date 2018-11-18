require 'spec_helper'
require_relative '../lib/board'

RSpec.describe Board do
  let(:board) { board = Board.new }
  
  describe ".new" do
    it "should be initialized as a 6 row grid" do
      expect(board.rows.size).to eq(6)
    end
    it "should be initialized with 7 coloumns in each row" do
      expect(board.rows[0].size).to eq(7)
    end
    it "should initialized with only ' ' in each slot" do
      expect(board.rows[0][0]).to eq(' ')
    end
  end

  describe "#print" do
    it "prints the board" do
      pretty_board = 
        "|A B C D E F G|\n" +
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
      expect(board.valid?('E')).to eq(true)
    end
    it "returns false if column is invalid" do
      board.rows.each {|row| row[4] = 'O'}
      expect(board.valid?('E')).to eq(false)
    end
  end

  describe "#add_peice" do
    it "reflects the player's turn on the board" do
      added_board = 
        "|A B C D E F G|\n" +
        "|             |\n" +
        "|             |\n" +
        "|             |\n" +
        "|             |\n" +
        "|             |\n" +
        "|        O    |"
      board.add_peice('O', 'E')
      expect(board.print).to eq(added_board)
    end
    it "reflects the 2nd player's turn on the board" do
      added_board = 
      "|A B C D E F G|\n" +
      "|             |\n" +
      "|             |\n" +
      "|             |\n" +
      "|             |\n" +
      "|        X    |\n" +
      "|        O    |"
      board.add_peice('O', 'E')
      board.add_peice('X', 'E')
      expect(board.print).to eq(added_board)
    end
  end

  describe "#win?" do
    it "should return true if players have 4 vertical markers in a row" do
      4.times {board.add_peice('X','C')}
      expect(board.win?).to eq(true)
    end
    it "should return false if players do not have 4 vertical markers in a row" do
      3.times {board.add_peice('X', 'B')}
      board.add_peice('O', 'B')
      board.add_peice('X', 'B')
      expect(board.win?).to eq(false)
    end
  end

  describe "#stalemate?" do
    it "should return true when all slots are filled but no winner is declared" do
      board.rows = [
        ["X","O","X","O","X","O","X"],
        ["O","X","O","X","O","X","O"],
        ["X","O","X","O","X","O","X"],
        ["O","X","O","X","O","X","O"],
        ["X","O","X","O","X","O","X"],
        ["O","X","O","X","O","X","O"],
        ["X","O","X","O","X","O","X"]
      ]
      expect(board.stalemate?).to eq(true)
    end
    it "should return false when slots are remaining on the board" do
      board.rows = [
        [" "," "," "," "," "," "," "],
        [" "," "," "," "," "," "," "],
        ["X","O","X","O","X","O","X"],
        ["O","X","O","X","O","X","O"],
        ["X","O","X","O","X","O","X"],
        ["O","X","O","X","O","X","O"],
        ["X","O","X","O","X","O","X"]
      ]
      expect(board.stalemate?).to eq(false)
    end
    it "returns false if a winner is found" do
      board.rows.each {|row| row = ["O","O","O","O","O","O","O"]}
      expect(board.stalemate?).to eq(false)
    end
  end

end
