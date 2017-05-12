# Used by rackExperiment.rb.
# .ru files are config files for Rack based applications.
# Example usage:
#ruby-2.3.0@rex:~/own_src/rex/lib$ unicorn -p 4567
#I, [2016-12-09T11:54:41.326891 #37609]  INFO -- : listening on addr=0.0.0.0:4567 fd=9
#I, [2016-12-09T11:54:41.326997 #37609]  INFO -- : worker=0 spawning...
#I, [2016-12-09T11:54:41.327814 #37609]  INFO -- : master process ready

# Alternative example usage:
#ruby-2.3.0@rex:~/own_src/rex/lib$ rackup
#Puma 1.6.3 starting...
#* Min threads: 0, max threads: 16
#* Environment: development
#* Listening on tcp://localhost:4567

# Example of how to then send test requests to the Rack application:
#ruby-1.9.3-p551@cookbooks:~$ curl localhost:4567/hello
#ruby-1.9.3-p551@cookbooks:~$ curl -X POST -D - http://localhost:4567/hello
#HTTP/1.1 200 OK
#Content-Type: text/html;charset=utf-8

#\ -p 4567

require './rackExperiment'

run Sinatra::Application
