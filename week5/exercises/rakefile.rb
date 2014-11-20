desc "prints all the student names"
task :print_names do
  File.open("names") do |f|
    f.each do |name|
      p name.chomp
    end
  end
end

desc "Creates a class dir"
task :create_class_dir do
  Dir.mkdir "class" unless Dir.exists? "class"
end

desc "create student dirs"
task :create_student_dirs => [:create_class_dir] do
  File.open("names") do |f|
    f.each do |names|
      dir = "class/#{name.chomp}"
      Dir.mkdir(dir) unless Dir.exists? dir
    end
  end
end

desc "removes all dirs and the class"
task :clean_up => [:create_student_dirs] do
  File.open("names") do |f|
    f.each do |name|
      dir = "class/#{name.chomp}"
      Dir.rmdir(dir)
    end
  end
  Dir.rmdir("class")
end

def open_file_get_lines file_name = "names"
  File.open(file_name) do |f|
    f.each do |name|
      yield name.chomp
    end
  end
end
