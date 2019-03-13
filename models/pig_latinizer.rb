class PigLatinizer
  def piglatinize(string)
    string.gsub(/\w+/) do |word|
      if word[0].match(/[aeiouAEIOU]/)
        # if the first letter is a vowel, just add "way" to the end
        "#{word}way"
      else
        # if the first letter is not a vowel, return the part from the first
        # non-consonant to the end (\\2) + the leading consonants (\\1) + "ay"
        word.gsub(/([b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]+)(.*)/, "\\2\\1ay")
        # ^ using .* is more generalizable than [a-zA-Z] because it will capture
        # apostrophes and other letters that aren't ASCII
      end
    end
    # also can be made into one line like:
    #string.gsub(/\w+/) {|word| word[0].match(/[aeiouAEIOU]/) ? "#{word}way" : word.gsub(/([b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]+)(.*)/, "\\2\\1ay")}
  end
end
