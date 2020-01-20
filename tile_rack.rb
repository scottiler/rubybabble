
class TileRack < TileGroup

  MAX_SIZE = 7

  def initialize
    super
  end

  def number_of_tiles_needed
    MAX_SIZE - tiles.length
  end

  def has_tiles_for?(text)
    guess = text.upcase.chars
    rackString = hand
    rackString.chars.each {|char|
      index = guess.index(char)
      next if index.nil?
      guess.delete_at(index)
      return true if guess.empty?
    }
    return false
  end

  def remove_word(text)
    validWord = text.upcase
    validWord.chars.each {|char| remove(char.to_sym)}
  end

end
