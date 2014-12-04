require_relative 'time_helper'
class Book
  using TimeHelper 

  def time_test
    Time.now.before? (Time.now - 10)
  end

  def send_message thing
    eval thing
  end

  def send thing
    return "nope!" if thing == "say_hi"
    super
  end

private
  def say_hi
    puts "hi"
  end

end