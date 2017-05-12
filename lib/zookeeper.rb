require 'rubygems'
require 'zookeeper'
require 'sinatra'

host = '127.0.0.1:2181'

z = Zookeeper.new(host)

result = z.get_children(path: '/zk_test')

puts result[:children]

puts z.set(path: '/zk_test/inner-zk_3', data: 'owen_data')

puts z.get(path: '/zk_test/inner-zk_3')

get '/' do
  z = Zookeeper.new(HOST)
  name = z.get(path: '/zk_api_name')[:data]
  "My app name is: #{{name}}"
end
