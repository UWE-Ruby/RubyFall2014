namespace :hi do

  desc "Hello world task"
  task :hello do
    puts "hello world!"
  end

end

task :bye do
  puts "goodbye world!"
end

task :hi_bye => [:hello, :bye, :hello]

task :default => [:hello]