require_relative "../../lib/rectangle.rb"

RSpec.describe 'a rectangle' do
  describe '#initialize' do
    it 'creates a new rectangle' do
      @myrec = Rectangle.new(10, 20)

#      expect(@myrec.instance_variable_get('@store')).to be_empty
    end
  end

  describe '#perimeter' do
    it 'calculates perimeter' do
      @myrec = Rectangle.new(10, 20)
      myperimeter = @myrec.perimeter()

      expect(myperimeter).not_to be(nil)
    end
  end
end
