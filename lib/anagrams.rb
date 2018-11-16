require('pry')

class Word < String
    attr_accessor(:string)

    def initialize(string)
      @string = string
    end

  def anagrams(word2)
    if(/\W|\d/.match(@string)) | !(/[aeiouy]/.match(@string))
      return "'#{@string}' is not a word."
    elsif(/\W|\d/.match(word2))
      return "'#{word2}' is not a word."
    end

    if !(/["#{@string}"]/.match("#{word2}"))
      return "'#{@string}' and '#{word2}' are antigrams."
    end

    if(@string.downcase.split("").sort().join() == word2.downcase.split("").sort().join())
    "This is a match"
    else
    "No match"
    end
  end

end
