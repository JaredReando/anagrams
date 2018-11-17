require('pry')

class Word < String
  attr_accessor(:string)
  def initialize(string)
    @string = string
  end


  def non_letters?(letters_compare_word)
    (/\W|\d/.match(letters_compare_word)) || !(/[aeiouy]/.match(letters_compare_word))
  end

  def real_word?(real_word_compare_word)
    (/\W|\d/.match(real_word_compare_word))
  end

  def antigram?(antigram_compare_word)
    (/["#{@string}"]/.match("#{antigram_compare_word}"))
  end


  def anagrams(compare_word)
    compares = [@string, compare_word]

    if(non_letters?(compare_word.gsub(" ","")))
      return "'#{compare_word}' is not a word."
    elsif(non_letters?(@string.gsub(" ","")))
      return "'#{@string}' is not a word."
    end

# checks if either word contains non-alpha characters. If that check is true, statement shows
    # if (real_word?(compare_word.gsub(" ","")))
    #   return "'#{compare_word}' is not a word."
    # elsif (real_word?(@string.gsub(" ","")))
    #   return "'#{@string}' is not a word."
    # end

    if !(antigram?(compare_word))
      return "'#{@string}' and '#{compare_word}' are antigrams."
    end

    if(@string.downcase.split("").sort().join() == compare_word.downcase.split("").sort().join())
    "'#{@string}' and '#{compare_word}' are anagrams!"
    else
    "No match"
    end

  end
end
