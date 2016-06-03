require_relative "../../lib/strategy_pattern"

describe MinStrategy do
  let(:items) { [] }
  subject { described_class.new(items) }

  describe '#choose_item' do
    subject { super().choose_item }

    context 'with the items 1,2,3,4' do
      let(:items) { [1,2,3,4] }
      it { is_expected.to eq(1) }
    end
  end
end
