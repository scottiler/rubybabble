
class Word < TileGroup
  
  
  def initializeremove_word(text)
    super()
  end
  
  def score
    score = 0
    tiles.each {|tile| score += TileBag.points_for(tile)}
    return score
  end
    
end
