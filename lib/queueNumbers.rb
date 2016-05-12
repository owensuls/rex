class QueueNumbers
  def initialize
    @store = Array.new
  end

  def dequeue
    # Removes the first element and returns it
    @store.shift
  end

  def enqueue(number)
    fail "Number is not valid" \
    unless number.is_a?(Fixnum) && number >= 0

    @store << number
  end

  def size
    @store.size
  end

  def print_queue
    @store.each_with_index do |item, position|
      puts "#{position} => #{item}"
    end
  end
end
