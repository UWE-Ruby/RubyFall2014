
#read lines and output them 
desc "read files and print them"
task :readnames do 
  f.File.open("names", 'r') 
  f.each do |line| 
    puts "#{line}" 
  end 
end 

desc "create a class directory" 
task :makedirectory do 
  d = Dir.new("newdirectory") 
end 

desc "make directory for each name" 
task :makenamedirectories => [m:makedirectory] do 
  x.each do |line| 
    x.mkdir("#{|line|}")
  end   
end 


====

desc "prints all student names" 
task :print_names do 
  File.open("names") do |f| 
    f.each do |name| 
      #see the \n new line as .inspect of objects 
      p name.chomp 
      #don't see new line 
      puts name
      print name  
    end
  end
end

desc "Creates a class directory" 
task :create_class_dir do 
  Dir.mkdir "class" unless Dir.exists? "class" 
end 

desc "creates student direcotries" 
task :create_student_dirs => [:create_class_dir] do 
  File("names") do |f| 
    f.deach do |name| 
      dir = "class/#{name.chomp}"
      Dir.mkdir(dir) unless Dir.exists? dir 
    end 
  end 
end 

desc "removes all directories and the class directory" 
task :clean_up => [:create_student_dirs] do 
  File.open("names" do |f| 
    f.each do |name| 
      dir = "class/#{name.chomp}" 
       "
      Dir.rmdir("class") 
end 






