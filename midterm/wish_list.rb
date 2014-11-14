#- Make the rspec tests in wish_list_spec.rb pass by writing a WishList class
#- The WishList class should:
#- Mixin Enumerable
#- Define each so it returns wishes as strings with their index as part of the string

class WishList
  include Enumerable
  attr_accessor :wishes

  def map
    wish_list = ['1. '],
    wish_list = ['2. '],
    wish_list = ['3. '],
    wish_list = ['4. '],
    wish_list = ['5. ']
    wish_list.zip(wishes).map{|w| w.join}
  end
end
