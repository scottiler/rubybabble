require "minitest/autorun"
require_relative "../../tile_rack.rb"

class TileRack::TestHasTilesFor < Minitest::Test

  def setup
    @tilerack = TileRack.new
  end

  def test_rack_has_needed_letters_when_letters_are_in_order_no_duplicates
    @tilerack.append(:C)
    @tilerack.append(:A)
    @tilerack.append(:T)
    assert_equal true, @tilerack.has_tiles_for?("cat")
  end

  def test_rack_has_needed_letters_when_letters_are_not_in_order_no_duplicates
    @tilerack.append(:T)
    @tilerack.append(:C)
    @tilerack.append(:A)
    assert_equal true, @tilerack.has_tiles_for?("cat")
  end

  def test_rack_doesnt_contain_any_needed_letters
    @tilerack.append(:T)
    @tilerack.append(:C)
    @tilerack.append(:A)
    assert_equal false, @tilerack.has_tiles_for?("boy")
  end

  def test_rack_contains_some_but_not_all_needed_letters
    @tilerack.append(:T)
    @tilerack.append(:C)
    @tilerack.append(:A)
    assert_equal false, @tilerack.has_tiles_for?("cap")
  end

  def test_rack_contains_a_word_with_duplicate_letters
    @tilerack.append(:B)
    @tilerack.append(:B)
    @tilerack.append(:O)
    @tilerack.append(:Y)
    assert_equal true, @tilerack.has_tiles_for?("bob")
  end

  def test_rack_doesnt_contain_enough_duplicate_letters
    @tilerack.append(:B)
    @tilerack.append(:B)
    @tilerack.append(:O)
    @tilerack.append(:Y)
    assert_equal false, @tilerack.has_tiles_for?("bobby")
  end

end
