require_relative "tile_group.rb"

class Word < TileGroup
  
  
  def initialize
     
    #@word = tiles
    super()
  end
  
  def score
    score = 0
    tiles.each {|tile| score += points_for(tile)}
    return score
  end
  
  def get
    return tiles
  end
  
end
