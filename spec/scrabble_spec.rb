require 'scrabble'


describe Scrabble do


  describe '#score' do
    it 'returns 1 for the letter a' do
      scrabble = Scrabble.new("a")
      expect(scrabble.score).to eq 1
    end

    it 'returns 4 for the letter f' do
      scrabble = Scrabble.new("f")
      expect(scrabble.score).to eq 4
    end

    it 'returns 6 for the word street' do
      scrabble = Scrabble.new("street")
      expect(scrabble.score).to eq 6
    end

    it 'returns 0 for nil' do
      scrabble = Scrabble.new(nil)
      expect(scrabble.score).to eq 0
    end

    it 'returns 0 for the a space' do
      scrabble = Scrabble.new(" ")
      expect(scrabble.score).to eq 0
    end

    it 'returns 22 for the word quirky' do
      scrabble = Scrabble.new("quirky")
      expect(scrabble.score).to eq 22
    end

    it 'returns 41 for the word OXYPHENBUTAZONE' do
      scrabble = Scrabble.new("OXYPHENBUTAZONE")
      expect(scrabble.score).to eq 41
    end

    it 'returns 0 for " \t\n"' do
      scrabble = Scrabble.new(" \t\n")
      expect(scrabble.score).to eq 0
    end
  end
end
