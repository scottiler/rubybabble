require 'spellchecker'
require 'tempfile'
require_relative "tile_bag.rb"
require_relative "tile_group.rb"
require_relative "tile_rack.rb"
require_relative "word.rb"

class Babble

  def initialize
    @bag = TileBag.new
    @rack = TileRack.new
    @zoo = "zoo"
    @testWord = ""
    @score = 0
    @quit = false

  end

  def run
    while !@quit
      populate_rack
      display_rack
      get_guess
      if !@quit
        check_for_quit
        check_for_correct_tiles
      end
    end
  end

  private
  def populate_rack
    while @rack.number_of_tiles_needed > 0
      @rack.append(@bag.draw_tile)
    end
  end

  private
  def display_rack
    print "\n"
    print"THE TILES: #{@rack.tiles}"
    print "\n"
  end

  private
  def get_guess
    print "Enter your word or quit to exit: "
    @testWord = gets.chomp
    if @testWord.empty?
      get_guess
    end
  end

  private
  def check_if_valid_word
    if Spellchecker::check(@testWord)[0][:correct]
      return true
    else
      print "Not a valid word"
    end
    false
  end

  private
  def check_for_correct_tiles
    if check_if_valid_word
      if @rack.has_tiles_for?(@testWord)
        wordClass = Word.new
        wordScore = 0
        @testWord.upcase.chars.each {|letter| wordClass.append(letter.to_sym)}
        wordScore += wordClass.score()
        @score += wordScore
        @rack.remove_word(@testWord)
        print "You made a WORD for #{wordScore} points\n\n"
        @testWord == ""
      else
        print "Not enough tiles"
      end
    end

  end

  private
  def check_for_quit
  #  @testWord.upcase.chars.each {|letter| @word.append(letter.to_sym)}
  #  print @word.score()
    if @testWord.eql?("quit")
      print "Thanks for playing, total score: #{@score}\n"
      @quit = true
    end
  end
end
Babble.new.run
