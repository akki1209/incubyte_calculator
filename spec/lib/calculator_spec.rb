require_relative '../../lib/calculator'
require_relative '../../lib/exceptions/calculator_exceptions'

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

        context 'when string contains multiple numbers available in the passed string' do
          context 'when numbers are comma separated' do
            it 'returns should return the correct sum of numbers' do
              expect(described_class.add('7,2')).to eq(9)
            end

            context 'when string contains space after comma' do
              it 'returns should return the correct sum of numbers' do
                expect(described_class.add('7, 2, 3')).to eq(12)
              end
            end
          end

          context 'when numbers are separated with other delimiters' do
            context 'when numbers are separated with \n' do
              it 'returns should return the correct sum of numbers' do
                expect(described_class.add('7\n2')).to eq(9)
              end
            end

            context 'when numbers are separated with \n and comma' do
              it 'returns should return the correct sum of numbers' do
                expect(described_class.add('7\n2,3')).to eq(12)
              end
            end

            context 'when numbers are separated with /n' do
              it 'returns should return the correct sum of numbers' do
                expect(described_class.add('7/n2/n4')).to eq(13)
              end
            end

            context 'when numbers are separated with double slash, \n, ; and comma' do
              it 'returns should return the correct sum of numbers' do
                expect(described_class.add('//;\n1;2')).to eq(3)
              end
            end
          end
        end

        context 'when string contains negative values' do
          context 'when single negative integer available in string' do
            it 'should raise an error' do
              expect { described_class.add('7,-2') }.to raise_error(Exceptions::CalculatorExceptions::NegativeNumberError, "Negative numbers not allowed -2")
            end
          end

          context 'when multiple negative integer available in string' do
            it 'should raise an error' do
              expect { described_class.add('7,-3;-6') }.to raise_error(Exceptions::CalculatorExceptions::NegativeNumberError, "Negative numbers not allowed -3, -6")
            end
          end
        end
      end
    end
  end
end
