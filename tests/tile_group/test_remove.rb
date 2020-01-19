require "minitest/autorun"
require_relative "../../tile_group.rb"

class TileGroup::TestRemove < Minitest::Test

  def setup
    @group = TileGroup.new   
  end
  
  def test_remove_only_tile
    @group.append(:A)
    @group.remove(:A)
    assert_equal true, @group.is_empty
  end
  
  def test_remove_first_tile_from_many
    @group.append(:A)
    @group.append(:B)
    @group.append(:C)
    @group.remove(:A)
    assert_equal [:B, :C], @group.get_tiles
  end
  
  def test_remove_last_tile_from_many
    @group.append(:A)
    @group.append(:B)
    @group.append(:C)
    @group.remove(:C)
    assert_equal [:A, :B], @group.get_tiles
  end
  
  def test_remove_middle_tile_from_many
    @group.append(:A)
    @group.append(:B)
    @group.append(:C)
    @group.remove(:B)
    assert_equal [:A, :C], @group.get_tiles
  end
  
  def test_remove_multiple_tiles
    @group.append(:A)
    @group.append(:B)
    @group.append(:C)
    @group.append(:D)
    @group.append(:E)
    
    @group.remove(:B)
    @group.remove(:C)
    @group.remove(:D)
    assert_equal [:A, :E], @group.get_tiles
  end
  
  def test_make_sure_duplicates_are_not_removed
    @group.append(:A)
    @group.append(:B)
    @group.append(:A)
    @group.append(:A)
    @group.append(:E)
    
    @group.remove(:A)
    assert_equal [:B, :A, :A, :E], @group.get_tiles
  end
  
end
