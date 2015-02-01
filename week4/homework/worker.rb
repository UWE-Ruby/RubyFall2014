module Worker

def self.work x=1
  output = ""
  x.times {output = yield}
  output
end

end
