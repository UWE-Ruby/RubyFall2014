class ReneeError < Exception

  def message
    "Renee breaks everything"
  end

end


def hello
  begin
    raise ReneeError.new("override error message")
    puts yield
  rescue LocalJumpError => e
    puts e
  rescue ReneeError => e
    puts e
    puts "Don't let Renee near your code"
  ensure
    puts "you ran the hello method"
  end


  catch :thing do
    puts "before throw"
    throw :thing
    puts "after throw"
  end

  puts "outside of catch"

end

hello { " Hello World " }

hello