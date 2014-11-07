
class WishList 

  attr_writer :wishes 

  include Enumerable 

  def each 
    @wishes.each_with_index do |item, index |
      yield "#{index+1}. #{item}" 
    end
  end


end