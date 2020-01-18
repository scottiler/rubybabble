require "minitest/autorun"
require_relative "../../tile_bag.rb"

class TileBag::TestPointsFor < Minitest::Test
  
  def setup
    @testbag = TileBag.new
  end
  
  def test_confirm_point_values
    points1 = [:E, :A, :I, :O, :N, :R, :T, :L, :S, :U]
    points1.each {|point| assert_equal 1, TileBag.points_for(point)}
    
    points2 = [:D, :G]
    points2.each {|point| assert_equal 2, TileBag.points_for(point)}
    
    points3 = [:B, :C, :M, :P]
    points3.each {|point| assert_equal 3, TileBag.points_for(point)}
    
    points4 = [:F, :H, :V, :W, :Y]
    points4.each {|point| assert_equal 4, TileBag.points_for(point)}
    
    assert_equal 5, TileBag.points_for(:K)
    assert_equal 8, TileBag.points_for(:J)
    assert_equal 8, TileBag.points_for(:X)
    assert_equal 10, TileBag.points_for(:Q)
    assert_equal 10, TileBag.points_for(:Z)
    
    
  end
  
end

