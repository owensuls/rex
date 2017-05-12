require 'rspec'
require_relative '../../lib/math_op'

describe MathOp do
  let(:math) { described_class.new }

  describe '#add_numbers' do
    subject { super().add_numbers(num_1, num_2) }
    let(:num_1) { 0 }
    let(:num_2) { 0 }

    context 'when adding 0 and 0' do
      it ('adds my numbers') { is_expected.to eq(0) }
    end

    context 'when adding 1 and 10' do
      let(:num_1) { 1 }
      let(:num_2) { 10 }
      it ('adds my numbers') { is_expected.to eq(11) }
    end

    it 'adds numbers' do
      expect(subject).to eq(0)
    end

    it ('adds my numbers') { is_expected.to eq(0) }

    it 'adds 2 integers' do
      expect(math.add_numbers(2,3)).to eq(5)
    end

    it 'adds 1 and 10' do
      expect(math.add_numbers(1,10)).to eq(11)
    end

    [[1,2,3], [2,3,5]].each do |number_1, number_2, number_3|
      context "when using #{number_1} and #{number_2}" do
        let(:num_1) { number_1 }
        let(:num_2) { number_2 }
        let(:result) { number_3 }

        it { is_expected.to eq(result) }
      end
    end

    context 'when I add a number and a letter' do
      let(:num_2) { 'a' }

      it 'fails with a nice error' do
        expect { subject }.to raise_error(TypeError)
      end
    end
  end
end
