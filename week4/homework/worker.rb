class Worker
def self.work (*t)
  if t == []   
    yield
  else
    n = t[0]
    num = 0
    while num < n
      num += 1
      total = yield  
    end
    total
 
    
    
end   
    
end
end
