class PigLatinizer
  def piglatinize(string)
    latinized_list = string.split.map do |word|
      # makes a list like ["p", "o", "rk"], ["pl", "e", "ase"], or ["", "u", "ntil"]
      parts_of_word = word.split(/([aeiouAEIOU])/, 2)
      # first item is empty if it starts with a vowel
      if parts_of_word[0] == ""
        "#{word}way"
      else
        "#{parts_of_word[1]}#{parts_of_word[2]}#{parts_of_word[0]}ay"
      end
    end
    latinized_list.join(" ")
  end
end
