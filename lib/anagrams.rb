require('pry')

# class Word < String

  def anagrams(word1, word2)
    if(/\W|\d/.match(word1))
      return "'#{word1}' is not a word."
    elsif(/\W|\d/.match(word2))
      return "'#{word2}' is not a word."
    end

    if(word1.downcase.split("").sort().join() == word2.downcase.split("").sort().join())
    "This is a match"
    else
    "No match"
    end
  end

# end
