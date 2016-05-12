class Person
  attr_accessor :name, :addresses, :emails

  def initialize(name = 'default name')
    @name = name
    @addresses = []
    @emails = []
  end
end

class PersonBuilder
  attr_reader :person

  def initialize
    @person = Person.new
  end

  def obtain_person
    @person
  end

  def add_addresses(street)
    person.addresses << street
  end

  def add_email(email)
    person.emails << email
  end
end

=begin
  class << self
    def create_entity(type)
      case type
      when: person
        Person.new
      end
    end
  end
=end
