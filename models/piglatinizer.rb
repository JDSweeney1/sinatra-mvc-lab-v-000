class PigLatinizer

  def piglatinize(word)

    non_pig_latin_words = ["i", "me", "to", "too", "a", "an", "in", "and", "on"]
    vowels = ["a", "e", "i", "o", "u"]

    if word.split("").count == 1
      @pig = "#{word + "way"}"
    else
      @pig = "#{word.split("").drop(1).join + word[0] + "ay"}"
    end
  end


  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
