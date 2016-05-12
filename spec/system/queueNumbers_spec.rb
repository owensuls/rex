require_relative '../../lib/queueNumbers'

@myNumbers = QueueNumbers.new

RSpec.describe 'the queue with positive numbers' do
  describe '#initialize' do
    it 'creates a new store' do
      expect(@myNumbers.instance_variable_get('@store')).not_to be(nil)
    end
  end

  describe '#dequeue' do
  end

  describe '#enqueue' do
  end

  describe '#print_queue' do
  end
end
