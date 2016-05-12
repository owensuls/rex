def do_something
  puts "Hi from test.rb"
end

=begin
require 'logstash/outputs/base'
require 'logstash/namespace'
require 'json'

Following is broken:
Class myEvent
  def has_key()
  end
end

  if event.has_key?("test")
    metric_pair = [
      {
          'name' => event[METRIC_NAME_IN_JMX_EVENT].to_s,
          'value' => event[METRIC_VALUE_IN_JMX_EVENT].to_s
      }
    ]
  end


unless %w(client server).include?("client")
  puts('the sensu.install_mode attribute must be overriden with "client" or "server" ' \
                 'as appropriate for the sensu::_install recipe to be allowed to proceed')
end

%w(sensu-client sensu-api sensu-server redis6379 uchiwa).each do |svc|
    puts svc
end

puts 1.class
puts 1.234.class
puts "A string".class

A_CONSTANT = 3.14
A_CONSTANT = 1.6
puts A_CONSTANT

write_handler = File.new("yourSum.out", "w")
write_handler.puts("Random text 0759").to_s
write_handler.close

data_from_file = File.read("yourSum.out")
puts "Data from file: " + data_from_file

num_one = 1.000
num99 = 0.999

puts num_one.to_s + " - " + num99.to_s +
"=" + (num_one - num99).to_s

print "Enter a value : "

first_num = gets.to_i

print "Enter another value : "

second_num = gets.to_i

puts first_num.to_s + " + " + second_num.to_s +
" = " + (first_num + second_num).to_s
remote

=end
