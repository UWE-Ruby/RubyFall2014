class HeadGear
end

# This is a really cool Hat class
#
# Author:: Renée Hendricksen
# License:: MIT
#
# This is more info about the class
class Hat < HeadGear

  attr_accessor :color, :size

  # This is the constructor
  # * size : The size of the Hat
  # * color : The color of the Hat
  def initialize color, size
    @color = color
    @size = size
    if false
      @thingy = "whatever"
    end
  end

  def not_tested
    puts "hello"
  end


end