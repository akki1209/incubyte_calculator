require_relative '../../../lib/exceptions/calculator_exceptions'

describe Exceptions::CalculatorExceptions do
  describe 'calculator exceptions' do

    context 'negative number exceptions' do
      context 'when raise error for negative number' do
        context 'when multiple numbers passed in the params' do
          it 'returns error correct message' do
            exception_obj = described_class::NegativeNumberError.new([-3, -6])
            expect(exception_obj.message).to eq("Negative numbers not allowed -3, -6")
          end
        end

        context 'when empty numbers array passed in the params' do
          it 'returns error correct message' do
            exception_obj = described_class::NegativeNumberError.new([])
            expect(exception_obj.message).to eq("Negative numbers not allowed ")
          end
        end
      end
    end
  end
end
