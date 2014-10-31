desc "reads lines in names file"
task :rake1 do
   f=File.open("names",'r+')
   f.each do |line| 
      puts line
   end
end
