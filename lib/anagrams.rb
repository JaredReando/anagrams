require('pry')

# class Word < String

  def anagrams(word1, word2)
    if(word1.downcase.split("").sort().join() == word2.downcase.split("").sort().join())
    "This is a match"
    else
    "No match"
    end
  end

# end
