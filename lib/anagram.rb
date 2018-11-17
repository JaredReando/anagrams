require('pry')

class Word < String
  attr_accessor(:string)
  def initialize(string)
    @string = string
  end

  def real_word?(letters_compare_word)
    (/\W|\d/.match(letters_compare_word)) || !(/[aeiouy]/.match(letters_compare_word))
  end

  def antigram?(antigram_compare_word)
    (/["#{@string}"]/.match("#{antigram_compare_word}"))
  end

  def anagram(compare_word)
    compares = [@string, compare_word]
    compares.each do |compare|
      if(real_word?(compare.gsub(" ","")))
        return "'#{compare}' is not a word."
      end
    end
    if !(antigram?(compare_word))
      return "'#{@string}' and '#{compare_word}' are antigrams."
    end
    if(@string.gsub(" ","").downcase.split("").sort().join() == compare_word.gsub(" ","").downcase.split("").sort().join())
    "'#{@string}' and '#{compare_word}' are anagrams!"
    else
    "No match"
    end
  end
end
