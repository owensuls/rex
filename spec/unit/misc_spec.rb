require_relative '../../lib/misc'

RSpec.describe 'Miscellaneous experiments' do
  describe '#compareStrings' do
    it 'Compares 2 strings' do

      @myMisc = Misc.new
      myResult = @myMisc.compareStrings()
      expect(myResult).to match 0
    end
  end

  describe '#experimentPipe' do
    it 'Experiments with pipe symbol' do
      @myMisc = Misc.new
      myResult = @myMisc.experimentPipe()
        expect(myResult).to eq("My Experiment")
    end
  end

  describe '#experimentWithOr' do
      it 'Experiments with matching strings using Or' do
        @myMisc = Misc.new
        myResult = @myMisc.experimentWithOr()
          expect(myResult).to eq("Matched")
      end
  end
end
