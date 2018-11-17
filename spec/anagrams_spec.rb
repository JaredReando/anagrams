require('anagram')
require('rspec')

word = Word.new("")

describe('anagram method') do

  it("evaluates two letters for a match.") do
    word.string=("i")
    expect(word.anagram("i")).to(eq("'i' and 'i' are anagrams!"))
  end

  it("returns 'no match' for non-matching inputs.") do
    word.string=("i")
    expect(word.anagram("it")).to(eq("No match"))
  end

  it("evaluates two words for an exact match regardless of case.") do
    word.string=("apple")
    expect(word.anagram("aPplE")).to(eq("'apple' and 'aPplE' are anagrams!"))
  end

  it("evaluates two words for an anagram match.") do
    word.string=("sham")
    expect(word.anagram("Mash")).to(eq("'sham' and 'Mash' are anagrams!"))
  end

  it("checks if inputs contain non-alpha characters before comparing values.") do
    word.string=("shameless")
    expect(word.anagram("sham3less")).to(eq("'sham3less' is not a word."))
  end

  it("checks if inputs contain vowels before comparing values.") do
    word.string=("plbtttt")
    expect(word.anagram("peanuts")).to(eq("'plbtttt' is not a word."))
  end

  it("checks if inputs contain no matching letters.") do
    word.string=("scissors")
    expect(word.anagram("amaze")).to(eq("'scissors' and 'amaze' are antigrams."))
  end

  it("ignores spaces when comparing strings.") do
    word.string=("Halleys comet")
    expect(word.anagram("shall yet come")).to(eq("'Halleys comet' and 'shall yet come' are anagrams!"))
  end

end
