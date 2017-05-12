require 'bunny'

conn = Bunny.new(hostname: '127.0.0.1')
conn.start

conn.start

ch = conn.create_channel
#q = ch.queue('hello')
q = ch.queue('task_queue', durable: true)

message = ARGV.empty? ? 'hello world2' : ARGV.join(' ')
#ch.default_exchange.publish(message, routing_key: q.name)
q.publish(message, persistent: true)

puts "Message send: #{message}"

conn.close
