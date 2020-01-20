require "minitest/autorun"
require_relative "../../tile_rack.rb"

class TileRack::TestRemoveWord < Minitest::Test

  def setup
    @tilerack = TileRack.new
  end

  def test_can_remove_a_word_whose_letters_are_in_order_on_the_rack
    @tilerack.append(:B)
    @tilerack.append(:O)
    @tilerack.append(:B)
    @tilerack.append(:C)
    @tilerack.append(:A)
    @tilerack.append(:T)
    @tilerack.remove_word("cat")
    assert_equal [:B, :O, :B], @tilerack.tiles
  end

  def test_can_remove_a_word_whose_letters_are_not_in_order_on_the_rack
    @tilerack.append(:B)
    @tilerack.append(:O)
    @tilerack.append(:B)
    @tilerack.append(:C)
    @tilerack.append(:A)
    @tilerack.append(:T)
    @tilerack.remove_word("boat")
    assert_equal [:B, :C], @tilerack.tiles
  end

  def test_can_remove_word_with_duplicate_letters
    @tilerack.append(:B)
    @tilerack.append(:O)
    @tilerack.append(:B)
    @tilerack.append(:C)
    @tilerack.append(:A)
    @tilerack.append(:T)
    @tilerack.remove_word("BOB")
    assert_equal [:C, :A, :T], @tilerack.tiles
  end

  def test_can_remove_word_without_removing_unneeded_duplicate_letters
    @tilerack.append(:B)
    @tilerack.append(:A)
    @tilerack.append(:B)
    @tilerack.append(:O)
    @tilerack.append(:B)
    @tilerack.append(:B)
    @tilerack.remove_word("BOB")
    assert_equal [:A, :B, :B], @tilerack.tiles
  end

end
