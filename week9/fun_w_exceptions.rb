class FunError < Exception
  def message
    "test"
  end
end


def call_db
  raise FunError.new if [1,2,3].sample.even?
end

catch :thing do

  begin
    require 'pry'
    user_input = gets
    binding.pry
    call_db
  rescue FunError => e
    puts "The Fun Error was raised!"
  ensure
    puts "this always happens"
  end

  puts "hello world"

  puts "before throw"
  throw :thing if [1,2,3].sample.even?
  puts "after throw"
end


puts "here!"