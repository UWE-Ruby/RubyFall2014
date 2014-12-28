
task :name_students do 
	f = File.new "names"

	f.each do |name|
		puts name
	end
end

task :create_class_dir do
	Dir.mkdir("class")
end

task :create_student_dirs => [:create_class_dir] do
	f = File.new "names"

	Dir.chdir("class")

	f.each do |name|
		Dir.mkdir name.chop
	end

	Dir.chdir("..")
end