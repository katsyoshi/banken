require "bundler/gem_tasks"

task :test do
  require 'rake/testtask'
  Rake::TestTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/test_*.rb'
    test.verbose = true
  end
end
