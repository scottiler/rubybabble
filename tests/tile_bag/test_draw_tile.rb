require "minitest/autorun"
require_relative "../../tile_bag.rb"

class TileBag::TestDrawTile < Minitest::Test

  def setup
    @testbag = TileBag.new
  end

  def test_has_proper_number_of_tiles
    assert_equal 98, @testbag.get_length
  end

  def test_has_proper_tile_distribution
    a=0; b=0; c=0; d=0; e=0; f=0; g=0; h=0; i=0; j=0; k=0; l=0; m=0; n=0; o=0; p=0; q=0;
    r=0; s=0; t=0; u=0; v=0; w=0; x=0; y=0; z=0;
    @testbag.get_tiles.each do |tile|
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
    assert_equal 9, a
    assert_equal 2, b
    assert_equal 2, c
    assert_equal 4, d
    assert_equal 12, e
    assert_equal 2, f
    assert_equal 3, g
    assert_equal 2, h
    assert_equal 9, i
    assert_equal 1, j
    assert_equal 1, k
    assert_equal 4, l
    assert_equal 2, m
    assert_equal 6, n
    assert_equal 8, o
    assert_equal 2, p
    assert_equal 1, q
    assert_equal 6, r
    assert_equal 4, s
    assert_equal 6, t
    assert_equal 4, u
    assert_equal 2, v
    assert_equal 2, w
    assert_equal 1, x
    assert_equal 2, y
    assert_equal 1, z
  end
end
