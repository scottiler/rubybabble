class TileBag
  tiles = []

  def initialize
    9.times {tiles.push(:A)}
    2.times {tiles.push(:B)}
    2.times {tiles.push(:C)}
    4.times {tiles.push(:D)}
    12.times {tiles.push(:E)}
    2.times {tiles.push(:F)}
    3.times {tiles.push(:G)}
    2.times {tiles.push(:H)}
    9.times {tiles.push(:I)}
    1.times {tiles.push(:J)}
    1.times {tiles.push(:K)}
    4.times {tiles.push(:L)}
    2.times {tiles.push(:M)}
    6.times {tiles.push(:N)}
    8.times {tiles.push(:O)}
    2.times {tiles.push(:P)}
    1.times {tiles.push(:Q)}
    6.times {tiles.push(:R)}
    4.times {tiles.push(:S)}
    6.times {tiles.push(:T)}
    4.times {tiles.push(:U)}
    2.times {tiles.push(:V)}
    2.times {tiles.push(:W)}
    1.times {tiles.push(:X)}
    2.times {tiles.push(:Y)}
    1.times {tiles.push(:Z)}
  end
  
  def draw_tile
    tile = tiles.delete_at(rand(tiles.length))
    return tile
  end
end
  
