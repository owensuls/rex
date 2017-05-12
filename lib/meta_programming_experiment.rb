class Example
  def name
    'my name in the original class'
  end
end

$my_example = Example.new

# Here we are modifying the original class. The changes will even apply to objects of this class already created.
class Example
  def name
    'another name'
  end
end

# Here we are messing with standard Ruby classes - would not recommend this normally
class Hash
  def []=
    puts 'hello owen, I have messed with the Hash class'
  end
end

# Here we are passing the action received to the varible name.
class Example2
  attr_accessor :name

  def do(action)
    name.send(action)
  end
end

class Example3
  # The semi-colon after verb in the request method definition indicates a symbol. So with below syntax we need to pass a Hash to the method
  # and this hash must contain a key called "verb", and this key must be a symbol, not a string.
  #2.3.0 :164 >   load 'meta_programming_experiment.rb'
  # => true
  #2.3.0 :165 > h = { verb: 'post' }
  # => {:verb=>"post"}
  #2.3.0 :166 > e = Example3.new
  # => #<Example3:0x007f86b28557b0>
  #2.3.0 :167 > e.request(h)
  #verb currently is post
  # => nil
  #2.3.0 :168 > e.request()
  #verb currently is get
  # => nil
  def request(verb => :get)
  #def request(verb: :get)
    puts "verb currently is #{verb}"
  end
end

class Example4
  # Following will cause Ruby not to traverse up to the super class looking for a method if it doesn't exist in this class.
  def method_missing(sym, *args, &block)
    "trying to run method #{sym} with args #{args}"
  end
end
