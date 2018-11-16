require('pry')

class Word < String
  attr_accessor(:string)
  def initialize(string)
    @string = string
  end


  def non_letters?(compare_word)
    (/\W|\d/.match(@string)) | !(/[aeiouy]/.match(@string))
  end

  def antigram?(compare_word)
    (/["#{@string}"]/.match("#{compare_word}"))
  end

  def real_word?(compare_word)
    (/\W|\d/.match(compare_word))
  end

  def anagrams(compare_word)
    if(non_letters?(compare_word))
      return "'#{@string}' is not a word."
    elsif (real_word?(compare_word))
      return "'#{compare_word}' is not a word."
    end
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
