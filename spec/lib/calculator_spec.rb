require_relative '../../lib/calculator'

describe Calculator do
  describe 'calculator logics' do
    context '.add' do
      context 'when empty string is passed' do
        it 'should returns 0 value' do
          expect(described_class.add('')).to eq(0)
        end
      end
  
      context 'when string is not empty' do
        context 'when string contains single number available in the passed string' do
          it 'returns should return the correct number' do
            expect(described_class.add('7')).to eq(7)
          end
        end
      end
    end
  end
end
