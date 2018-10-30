require "simplecov"
SimpleCov.start
require "pry"
require_relative "../code"

RSpec.describe "perimeter method" do
  it "returns 20 for a square with a width of 5" do
    expect(perimeter(5)).to eq(20)
  end

  it "returns 30 for a rectangle with a width of 5 and a length of 10" do
    expect(perimeter(5, 10)).to eq(30)
  end
end

RSpec.describe "average method" do
  it "returns 7 as the average to [1,7,10,10]" do
    expect(average([1,7,10,10])).to eq(7)
  end
end

RSpec.describe "rankings method" do
  it "returns a string of the ranking data provided" do
    expect(rankings(["Dara"])).to be_a(String)
  end
end

RSpec.describe "greet method" do
  it "returns a string with the name provided" do
    expect(greet("Dara")).to include("Dara")
  end

  it "returns a string with the default greeting when no language is provided" do
    expect(greet("Dara")).to include("Hi")
  end

  it "returns a string with the spanish greeting with a language of 'spanish' is provided" do
    expect(greet("Dara", "spanish")).to include("Hola")
  end

  it "returns a string with the italian greeting with a language of 'italian' is provided" do
    expect(greet("Dara", "italian")).to include("Ciao")
  end

  it "returns a string with the french greeting with a language of 'french' is provided" do
    expect(greet("Dara", "french")).to include("Bonjour")
  end
end

RSpec.describe "create_puzzle method" do
  it "should return 'b a _ _ a _' from the word 'batman' and the guesses ['b', 'a']" do
    expect(create_puzzle("batman", ["b","a"])).to include("a", "b a")
  end

  it "should return '_ _ _ _ _ _' from the word 'batman' and no guesses argument" do
    expect(create_puzzle("batman")).to include("_ _ _ _ _ _")
  end

  it "should return 'batman' from the word 'batman' and the guesses ['b', 'a', 't', 'm', 'n']" do
    expect(create_puzzle("batman", ["b","a","t","m","n"])).to include("b a t m a n")
  end

  it "should return '________' from the word 'superman' and the guesses ['c', 'k', 'i', 'o', 'd']" do
    expect(create_puzzle("superman", ["c","k","i","o","d"])).not_to include("s u p e r m a n")
  end
end

RSpec.describe "divisible_by_three method" do
  it "should return true when provided with 9 as an argument" do
    expect(divisible_by_three(9)).to eq(true)
  end
end

RSpec.describe "perfect_square method" do
  it "should return true when provided 16 as an argument" do
    expect(perfect_square?(16)).to eq(true)
  end

  it "should return true when provided 25 as an argument" do
    expect(perfect_square?(25)).to eq(true)
  end

  it "should raise an error when not provided with a number greater than or equal to 1 as an argument" do 
    expect {perfect_square?(0)}.to raise_error('number must be greater than or equal to one')
  end 

  it "should return false when provided 5 as an argument" do
    expect(perfect_square?(5)).to eq(false)
  end
end