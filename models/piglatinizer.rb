class PigLatinizer

  def piglatinize(word)

    non_pig_latin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    vowels = ["a", "e", "i", "o", "u"]

    if word.split("").count == 1
      @pig = "#{word + "way"}"


  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
