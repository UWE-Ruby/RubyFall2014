

desc 'Default task'
task :default  do
	puts "This is the default task"	
end

desc 'Read names and output names to standard out'
task :read_out_names do
	open_file do |name|
	  puts name
	end
end

desc 'Create a class directory'
task :create_dir do
	Dir.mkdir "class" unless Dir.exists? "class"
end

desc "Create student directories"
task :create_student_directories => [:create_dir] do
	open_file do |name|
	  d = "class/#{name.chomp}"
	  Dir.mkdir( d ) unless Dir.exists? d
	end
end	

desc "Cleanup and remove all directories"
task :cleanup_dir => [:create_student_directories] do
	open_file do |name|
	  d = "class/#{name.chomp}"
	  Dir.rmdir( d )
	end
	Dir.rmdir("class")
end	

def open_file file_name = "names"
  File.open(file_name) do |f|
  	f.each do |name|
  		yield name.chomp
  	end
  end
end





