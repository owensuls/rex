# This file is being used to experiment with Rack, a small web server for Ruby apps.

require 'sinatra'

get '/hello' do
  puts 'In the get method'
end

post '/hello' do
  puts 'In the post method'
end
