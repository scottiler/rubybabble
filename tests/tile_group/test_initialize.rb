require "minitest/autorun"
require_relative "../../tile_group.rb"

class TileGroup::TestInitialize < Minitest::Test
  def setup
    @group = TileGroup.new
  end

  def test_create_empty_tile_group
    assert_equal true, @group.is_empty
  end
end
