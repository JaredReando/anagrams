require('anagrams')
require('rspec')

word = Word.new("")

describe('anagrams method') do

  it("evaluates two letters for a match.") do
    word.string=("i")
    expect(word.anagrams("i")).to(eq("'i' and 'i' are anagrams!"))
  end

  it("returns 'no match' for non-matching inputs.") do
    word.string=("i")
    expect(word.anagrams("it")).to(eq("No match"))
  end

  it("evaluates two words for an exact match regardless of case.") do
    word.string=("apple")
    expect(word.anagrams("aPplE")).to(eq("'apple' and 'aPplE' are anagrams!"))
  end

  it("evaluates two words for an anagram match.") do
    word.string=("sham")
    expect(word.anagrams("Mash")).to(eq("'sham' and 'Mash' are anagrams!"))
  end

  it("checks if inputs contain non-alpha characters before comparing values.") do
    word.string=("shameless")
    expect(word.anagrams("sham3less")).to(eq("'sham3less' is not a word."))
  end

  it("checks if inputs contain vowels before comparing values.") do
    word.string=("plbtttt")
    expect(word.anagrams("peanuts")).to(eq("'plbtttt' is not a word."))
  end

  it("checks if inputs contain no matching letters.") do
    word.string=("scissors")
    expect(word.anagrams("amaze")).to(eq("'scissors' and 'amaze' are antigrams."))
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
