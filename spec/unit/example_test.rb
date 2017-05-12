require_relative '../../lib/example'

RSpec.describe Example, '#temperature' do
  context "checking temperature" do
    it "checks temp" do
      my_example = Example.new

      total = my_example.addNumbers(20, 30)
      expect(total).to equal(50)

      volume = my_example.calculateVolume(20, 50, 8)
      expect(volume).to match(8000)

      weather = my_example.checkTemp(25)
      expect(weather).to match("Weather is hot.")
    end
  end
end
