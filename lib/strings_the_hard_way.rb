
class Strings
  attr_reader :lowerupper

  def initialize
    lowercase = ('a'..'z').to_a
    uppercase = ("A"..'Z').to_a
    @lowerupper = lowercase.zip(uppercase).to_h
  end


  def length(string)
    index = 0
    string.chars.each do |letter|
      index += 1
    end
    index
  end

  def upcase(string)
    new_string = []
    string.chars.each do |letter|
      new_string << lowerupper[letter]
    end
    new_string.join
  end

  def sub(string, replace, replacement)
    new_string = string.chars
    index = new_string.index(replace)
    new_string[index] = replacement
    new_string.join
  end
end
