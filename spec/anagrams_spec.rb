require('anagrams')
require('rspec')

describe('anagrams method') do
  it("evaluates two letters for a match.") do
    expect(anagrams("i", "i")).to(eq("This is a match"))
  end

  it("evaluates two words for an exact match regardless of case.") do
    expect(anagrams("apple", "aPplE")).to(eq("This is a match"))
  end

  it("evaluates two words for an anagram match.") do
    expect(anagrams("sham", "Mash")).to(eq("This is a match"))
  end

  it("checks if inputs are words before comparing values.") do
    expect(anagrams("shameless", "sham3less")).to(eq("'sham3less' is not a word."))
  end


  # check if two words are anagrams
  #
  # account for possibility that they could be different cases
  #
  # check if inputs are words. A word must contain at least 1 vowel.
  #
  # check if they are antigrams. That is, do the two words share NO matching letters?
  #
  # account for multiple words, spaces, and punctuation. evaluate entire collection of letters as one input 'pool'

end
