class PigLatinizer
  def piglatinize(string)
    word_list = string.split()
    latinized_list = word_list.map do |word|
      #binding.pry
      unchanged = true
      while true
        first_letter = word[0]
        if first_letter.downcase.match(/[aeiou]/)
          break
        else
          rest_of_word = word[1..-1]
          word = rest_of_word + first_letter
          unchanged = false
        end
      end

      if unchanged
        "#{word}way"
      else
        "#{word}ay"
      end
    end
    latinized_list.join(" ")
  end
end
