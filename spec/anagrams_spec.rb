require('anagrams')
require('rspec')

describe('anagrams method') do
  it("evaluates two letters for a match.") do
    expect(anagrams("i", "i")).to(eq("This is a match"))
  end

end
