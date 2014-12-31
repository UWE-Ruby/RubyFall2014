module Worker
  def self.work(n = 1)
    val = nil
    n.times {val = yield}
    return val
  end
end