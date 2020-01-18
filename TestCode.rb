class TileBag  
  
     
  def initialize
    @tiles = Array.new
    9.times {@tiles.push(:A)}
    2.times {@tiles.push(:B)}
    2.times {@tiles.push(:C)}
    4.times {@tiles.push(:D)}
    12.times {@tiles.push(:E)}
    2.times {@tiles.push(:F)}
    3.times {@tiles.push(:G)}
    2.times {@tiles.push(:H)}
    9.times {@tiles.push(:I)}
    1.times {@tiles.push(:J)}
    1.times {@tiles.push(:K)}
    4.times {@tiles.push(:L)}
    2.times {@tiles.push(:M)}
    6.times {@tiles.push(:N)}
    8.times {@tiles.push(:O)}
    2.times {@tiles.push(:P)}
    1.times {@tiles.push(:Q)}
    6.times {@tiles.push(:R)}
    4.times {@tiles.push(:S)}
    6.times {@tiles.push(:T)}
    4.times {@tiles.push(:U)}
    2.times {@tiles.push(:V)}
    2.times {@tiles.push(:W)}
    1.times {@tiles.push(:X)}
    2.times {@tiles.push(:Y)}
    1.times {@tiles.push(:Z)}
  end
  
  def draw_tile
    tile = @tiles.delete_at(rand(@tiles.length))
    return tile
  end
  
   def self.points_for(tile)
    points = {
      E: 1, A: 1, I: 1, O: 1, N: 1, R: 1, T: 1, L: 1, S: 1, U: 1,
      D: 2, G: 2,
      B: 3, C: 3, M: 3, P: 3,
      F: 4, H: 4, V: 4, W: 4, Y: 4,
      K: 5,
      J: 8, X: 8, Q: 10, Z: 10      
    }
    points[tile]
  end
  
  def empty?
    @tiles.empty?
  end
  
  def getLength
    @tiles.length
  end
  
  def get_tiles
    return @tiles
  end
  
end

test = TileBag.new()
puts test.empty?()
puts test.getLength()
drwTile = test.draw_tile()
puts drwTile
puts test.getLength()
puts TileBag.points_for(drwTile)

    a=0; b=0; c=0; d=0; e=0; f=0; g=0; h=0; i=0; j=0; k=0; l=0; m=0; n=0; o=0; p=0; q=0;
    r=0; s=0; t=0; u=0; v=0; w=0; x=0; y=0; z=0;
    puts "a is #{a}"
    puts e
    puts f
    puts y
    test.get_tiles.each do |tile|
      case tile
      when :A
        a += 1
      when :B
        b += 1
      when :C
        c += 1
      when :D
        d += 1
      when :E
        e += 1
      when :F
        f += 1
      when :G
        g += 1
      when :H
        h += 1
      when :I
        i += 1
      when :J
        j += 1
      when :K
        k += 1
      when :L
        l += 1
      when :M
        m += 1
      when :N
        n += 1
      when :O
        o += 1
      when :P
        p += 1
      when :Q
        q += 1
      when :R
        r += 1
      when :S
        s += 1
      when :T
        t += 1
      when :U
        u += 1
      when :V
        v += 1
      when :W
        w += 1
      when :X
        x += 1
      when :Y
        y += 1
      when :Z
        z += 1
      end
    end
   puts a
   puts b
  

