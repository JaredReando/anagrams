require('pry')

# class Word < String

  def anagrams(word1, word2)
    if(word1.downcase == word2.downcase)
    return "This is a match"
    else
    "No match"
    end
  end

# end
