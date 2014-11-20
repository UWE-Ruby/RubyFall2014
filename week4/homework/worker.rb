module Worker

  def Worker.work x=1
    x.times.inject(:+)
    yield
    yield
    yield
  end
end
