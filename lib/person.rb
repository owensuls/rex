$my_global_variable = 42

class Person
  @@num_persons = 0     # Class level variable
  @shared_things = []   # Instance variable on a class. Not inherited by child class.
  attr_accessor :name   # Instance level method

  def initialize
    @name = 'Owen'
    @@num_persons += 1
    puts "num_persons: #{@@num_persons}"
  end

  def self.num_persons  # Class level method
    @@num_persons
  end

  def self.shared_things=(new_value)
    @shared_things=new_value
  end
end

class Dad < Person
  @shared_things = 1
end
