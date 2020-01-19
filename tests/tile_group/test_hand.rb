require "minitest/autorun"
require_relative "../../tile_group.rb"

class TileGroup::TestHand < Minitest::Test

  def setup
    @group = TileGroup.new   
  end
  
  def test_convert_empty_group_to_string     
    assert_equal "", @group.hand
  end
  
  def test_convert_single_tile_group_to_string
    @group.append(:A)
    assert_equal "A", @group.hand
  end
  
  def test_convert_multi_tile_group_to_string
    @group.append(:C)
    @group.append(:A)
    @group.append(:T)
    assert_equal "CAT", @group.hand
  end
  
  def test_convert_multi_tile_group_with_duplicates_to_string
    @group.append(:A)
    @group.append(:A)
    @group.append(:A)
    assert_equal "AAA", @group.hand
  end
  
end
