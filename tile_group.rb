class TileGroup

  def initialize()
    @tiles = []
  end
  
  def append(tile)
    @tiles << tile
  end
  
  def remove(tile)
    @tiles.delete_at(@tiles.index(tile))
  end
  
  def hand
    hand = ""    
    @tiles.each {|tile| hand += tile.to_s}
    return hand
  end
  
  def is_empty
    return @tiles.empty?
  end
  
  def get_tiles
    return @tiles
  end
  
end
