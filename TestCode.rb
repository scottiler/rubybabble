

  def print_char(text)
    guess = text.upcase
    guess.chars.each {|letter|
      print letter + "\n"
    }
  end

  def has_tiles_for?(text)
    guess = text.upcase.chars
    temp = ""
    rackString = "BAOBBY"
    rackString.chars.each {|char|
      index = guess.index(char)
      next if index.nil?
      guess.delete_at(index)
      return true if guess.empty?
    }
    return false
  end

puts has_tiles_for?("oybba")
#print_char("bobby")
