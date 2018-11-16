require('pry')

class Word < String
    attr_accessor(:string)
    def initialize(string)
      @string = string
    end


  def is_word?(compare_word)
    (/\W|\d/.match(@string)) | !(/[aeiouy]/.match(@string))
  end


  def anagrams(compare_word)
    if(is_word?(compare_word))
      return "'#{@string}' is not a word."
    elsif(/\W|\d/.match(compare_word))
      return "'#{compare_word}' is not a word."
    end

    if !(/["#{@string}"]/.match("#{compare_word}"))
      return "'#{@string}' and '#{compare_word}' are antigrams."
    end

    if(@string.downcase.split("").sort().join() == compare_word.downcase.split("").sort().join())
    "This is a match"
    else
    "No match"
    end
  end

end
