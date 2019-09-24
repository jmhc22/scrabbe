class Scrabble

  def initialize(word)
    @scores = {
      " " => 0,
      "AEIOULNRST" => 1,
      "DG" => 2,
      "BCMP" => 3,
      "FHVWY" => 4,
      "K" => 5,
      "JX" => 8,
      "QZ" => 10
    }
    @word = word
  end


  def score
    return 0 if !@word.is_a? String
    score = 0
    @word.upcase.strip.chars do |letter|
      @scores.each { |l, s| score += s if l.include? letter }
    end
    score
  end

end
