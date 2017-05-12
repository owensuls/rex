require 'bunny'

conn = Bunny.new(hostname: '127.0.0.1')
conn.start

conn.start

ch = conn.create_channel
q = ch.queue('task_queue', durable: true)

begin

loop do
  q.subscribe(manual_ack: true, block: true) do |delivery_info, properties, body|
    sleep rand(5)

    puts " [x] Received #{body}"
    ch.ack(delivery_info.delivery_tag)
  end
end

rescue
  puts "ERROR: #{ex.message}"
end

conn.close
