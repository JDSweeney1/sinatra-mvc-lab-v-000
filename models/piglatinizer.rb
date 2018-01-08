class PigLatinizer

  def piglatinize(word)

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
