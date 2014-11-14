require 'rspec/core/rake_task' 

RSPec::Core::RakeTask.new('spec') 

task :default => :spec 

