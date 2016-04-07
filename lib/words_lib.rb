# words lib

class Words
  attr_reader :word

  def initialize(options = {})
    @word = options["word"]
  end

  # letters and corresponding values for scoring the words
  LETTERS = {
    1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
    2 => ["D", "G"],
    3 => ["B", "C", "M", "P"],
    4 => ["F", "H", "V", "W", "Y"],
    5 => ["K"],
    8 => ["J", "X"],
    10 => ["Q", "Z"]
  }

  # returns score (single word)
  def self.score(word)
    word.upcase!
    score = 0
    word.each_char do |letter|
      LETTERS.each do |k, v|
        if v.include?(letter)
          score += k
        end
      end
    end
    # special bonus if you use 7 tiles
    if word.length == 7
      score += 50
    end
    # return score as int
    return score
  end
end


