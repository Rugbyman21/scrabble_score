# Test specs for scrabble_score method
# Authors: Andrew Brennwald and Kellen Kolbeck

require('rspec')
require('scrabble_score')

describe('String#scrabble_score') do

# TEST 1: Shows the scrabble score for a given letter

  it("Shows the scrabble score for a given letter") do
    expect("a".scrabble_score()).to(eq(1))
  end

# TEST 2: Shows the combined scrabble score for a single-value
  it("Shows the combined scrabble score for a given word with letters of the same value") do
    expect("last".scrabble_score()).to(eq(4))
  end

# TEST 3: Shows the combined scrabble score for a combined-value word
  it("shows the combined scrabble score for a combined-value word") do
    expect("bad".scrabble_score()).to(eq(6))
  end

# TEST 4: Tolerates text insensitivity
  it("Transforms all inputed characters into lowercase letters") do
    expect("Bad".scrabble_score()).to(eq(6))
  end
end
