require('anagrams')
require('rspec')

describe('anagrams method') do
  it("evaluates two letters for a match.") do
    expect(anagrams("i", "i")).to(eq("This is a match"))
  end

  it("evaluates two words for a match (not case sensitive).") do
    expect(anagrams("Apple bottom jeans", "apple jeans bottom")).to(eq("This is a match"))
  end

end
