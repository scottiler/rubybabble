require "minitest/autorun"
require_relative "../../word.rb"

class Word::TestInitialize < Minitest::Test

  def test_create_empty_word
    testWord = Word.new
    assert_equal [], testWord.tiles
  end

end
