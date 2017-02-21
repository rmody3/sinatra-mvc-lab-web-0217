class PigLatinizer

  def piglatinize(word)
    additions = ""
    until %w(a e i o u A E I O U ).include?(word[0]) do
      additions << word[0]
      word.slice!(0)
    end
    if additions == ""
      word << "way"
    else
      word << additions
      word << "ay"
    end
    word
  end

  def to_pig_latin(string)
    array = string.split(" ")
    translated = array.map do |word|
      piglatinize(word)
    end
    translated.join(" ")
  end






end
