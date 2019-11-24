# Please implement your solution to hamming in this file

class Hamming
  def self.distance(s1 : String, s2 : String) : Int
    raise ArgumentError.new if s1.size != s2.size

    diff = 0
    s1.size.times do |i|
      diff += 1 if s1[i] != s2[i]
    end

    diff
  end
end

