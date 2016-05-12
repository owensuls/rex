require_relative './Experiments.rb'

namespace :owen do
  task :all do
    puts "Hi owen - about to run all"
    Rake::Task["owen:test2"].execute
  end

  task :test2 do
    do_something
  end
end

=begin
  ruby "mytest.rb"
  task test3: %w[owen:hello]

  :person is a special type of string that is memory efficient if re-assinging multiple times

=end
