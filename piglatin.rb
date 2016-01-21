class Piglatin

  def self.call(string)
    string.downcase.split.map do |word|
      if word.start_with?("a","e","i","o","u")
        word.chars.rotate!.join
      elsif word.match(/\b([bcdfghjklmnprstvwxyz]|qu)+/)
        consonants(word)
      else
        word.rotate!
      end + "ay"
    end.join(" ")
  end

  def self.consonants(str)
    length = str.match(/\b([bcdfghjklmnprstvwxyz]|qu)+/)[0].length
    str.chars.rotate!(length).join
  end
end
