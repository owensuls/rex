require 'rspec/retry'

# In this block, rand will only be called once because it is cached
#describe rand(3) do
#  it 'is equal to 1', :retry => 10, :retry_wait => 2 do
#    puts subject
#    expect(subject).to eq(1)
#  end
#end

describe rand(3) do
  subject { rand(2) }
  it 'is equal to 1', :retry => 2, :retry_wait => 1 do
    puts 'Now testing: ', subject
    expect(subject).to eq(1)
  end
end

describe ' my retries', :retry => 10, :retry_wait => 2 do
    it 'is 1' do
      expect(rand(4)).to eq(1)
    end
end
