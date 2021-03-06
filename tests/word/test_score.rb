require "minitest/autorun"
require_relative "../../word.rb"

class Word::TestScore < Minitest::Test
  def setup
    @testWord = Word.new
  end
  
  def test_empty_word_should_have_score_of_zero
    assert_equal 0, @testWord.score
  end
  
  def test_score_a_one_tile_word
    @testWord.append(:Z)
    assert_equal 10, @testWord.score
  end
  
  def test_score_a_word_with_multiple_different_tiles
    @testWord.append(:B)
    @testWord.append(:O)
    @testWord.append(:Y)
    assert_equal 8, @testWord.score
  end
  
  def test_score_a_word_with_recurring_tiles
    @testWord.append(:Z)
    @testWord.append(:Z)
    @testWord.append(:Z)
    assert_equal 30, @testWord.score
  end
  
end

