class PigLatinizer

  def piglatinize(word)

    vowels = ["a", "e", "i", "o", "u"]
    word_array = word.split("")

    if word_array.count == 1
      @pig = "#{word + "way"}"
    elsif vowels.include?(word[0])
      @pig = "#{word = "way"}"
    else
      index = word_array.find_index{|l| vowels.include?(l)}.to_i.-(1) #index of first vowel
      @pig = "#{word_array.drop(index).join + word[0..index] + "ay"}"
      # @pig = "#{word.split("").drop(1).join + word[0] + "ay"}"
    end
  end


  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
