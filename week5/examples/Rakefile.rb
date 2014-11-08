desc "This is a task that takes command line arguments"
task :task_w_args, [:arg1, :arg2] do |t, args|
  puts "Args were: #{args}"
end

desc "This task sets defaults for its arguments"
task :with_defaults, :name1, :name2 do |t, args|
  args.with_defaults(arg1: "hi", arg2: "hello")
  puts "Args with defaults were: #{args}"
end

desc "This task calls another rake task"
task :call_task do
  Rake::Task[:task_w_args].invoke(3, 4)
end

desc "This task passes arguments to dependent tasks"
task :with_args, [:arg1, :arg2] => :task_w_args


