require_relative "tile_group.rb"

class Word < TileGoup
  
  def initialize
    super()
    
  end
  
  def score
    score = 0
    @tiles.each {|tile| score += points_for(tile)}
    return score
  end
  
  
 end
