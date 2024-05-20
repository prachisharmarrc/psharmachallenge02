class Grains
    def self.square(square_num)
      raise ArgumentError, "Square number must be between 1 and 64" unless square_num.between?(1, 64)
      2**(square_num - 1)
    end
  
    def self.total
      (1..64).sum { |square_num| square(square_num) }
    end
  end
  