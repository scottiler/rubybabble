require "minitest/autorun"
require_relative "../../tile_rack.rb"

class TileRack::TestNumberOfTilesNeeded < Minitest::Test

  def setup
    @tilerack = TileRack.new
  end
  
  def test_empty_tile_rack_should_need_max_tiles
    assert_equal 7, @tilerack.number_of_tiles_needed
  end
  
  def test_tile_rack_with_one_tile_should_need_max_minus_one_tiles
     @tilerack.append(:A)
     assert_equal 6, @tilerack.number_of_tiles_needed
  end
  
  def test_tile_rack_with_several_tiles_should_need_some_tiles
    @tilerack.append(:A)
    @tilerack.append(:A)
    @tilerack.append(:A)
    @tilerack.append(:A)
    assert_equal 3, @tilerack.number_of_tiles_needed
  end
  
  def test_that_full_tile_rack_doesnt_need_any_tiles
    @tilerack.append(:A)
    @tilerack.append(:A)
    @tilerack.append(:A)
    @tilerack.append(:A)
    @tilerack.append(:A)
    @tilerack.append(:A)
    @tilerack.append(:A)
    assert_equal 0, @tilerack.number_of_tiles_needed
  end

end

