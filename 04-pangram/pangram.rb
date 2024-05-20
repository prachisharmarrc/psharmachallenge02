class Pangram
    def self.is_pangram?(sentence)
      alphabet = ('a'..'z').to_a
      sentence.downcase.each_char do |char|
        alphabet.delete(char) if alphabet.include?(char)
        return true if alphabet.empty?
      end
      false
    end
  end
  