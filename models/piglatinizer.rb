class PigLatinizer

  def piglatinize(word)

    vowels = ["a", "e", "i", "o", "u"]

    if word.split("").count == 1
      @pig = "#{word + "way"}"
    elsif vowels.include?(word[0])
      @pig = "#{word = "way"}"
    else
      @pig = "#{word.split("").find_index{|l| vowels.include?(l)}}"
      # @pig = "#{word.split("").drop(1).join + word[0] + "ay"}"
    end
  end


  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
