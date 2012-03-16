require './swe.rb'
require './nakshatra.rb'
class Astro
  attr_accessor :star, :ruler, :jyear
  def initialize(d, m, y)
    @jday = d
    @jmon = m
    @jyear = y
  end
  
  
  
end