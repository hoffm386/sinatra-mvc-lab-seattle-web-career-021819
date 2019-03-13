class PigLatinizer
  def piglatinize(string)
    # replace all words starting with vowels with the word + "way"
    string = string.gsub(/(\b[aeiouAEIOU]\w*)/, "\\1way")
    # for all words starting with consonants, return the part from the first
    # vowel to the end (\\2), then the leading consonants (\\1), + "ay"
    string = string.gsub(/\b([b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]+)([A-Za-z]+)/, "\\2\\1ay")
  end
end
