require "minitest/autorun"
require_relative "../../word.rb"

class Word::TestScore < Minitest::Test
  def setup
   # @group = TileGroup.new
    @testWord = Word.new
  end
  
  def test_empty_word_should_have_score_of_zero
    assert_equal 0, @testWord.score
  end
  
  def test_score_a_one_tile_word
    @testWord.append(:Z)
    assert_equal [:Z], @testWord.tiles
  end
  
end

