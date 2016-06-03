require_relative '../../lib/queueNumbers'


RSpec.describe 'the queue with positive numbers' do
  describe '#initialize' do
    it 'creates a new store' do
      @myNumbers = QueueNumbers.new

      expect(@myNumbers.instance_variable_get('@store')).not_to be(nil)
      expect(@myNumbers.instance_variable_get('@store')).to be_empty
    end
  end

  describe '#dequeue' do
  end

  describe '#enqueue' do
    it 'adds a number to a queue' do
      @myNumbers = QueueNumbers.new
      @myNumbers.enqueue(100)

      expect((@myNumbers.instance_variable_get('@store')).size).to eq(1)
      expect(@myNumbers.instance_variable_get('@store')[0]).to be(100)
    end
  end
end
