desc "prints all the student names"
task :print_names do
  open_file_get_lines do |name|
    p name
  end
end

desc "Creates a class directory"
task :create_class_dir do
  Dir.mkdir "class" unless Dir.exists? "class"
end

desc "creates student directories"
task :create_student_dirs => [:create_class_dir] do
  open_file_get_lines do |name|
    dir = "class/#{name}"
    Dir.mkdir(dir) unless Dir.exists? dir
  end
end

desc "removes all the directories and the class directory"
task :clean_up => [:create_student_dirs] do
  open_file_get_lines do |name|
    dir = "class/#{name}"
    Dir.rmdir(dir)
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





