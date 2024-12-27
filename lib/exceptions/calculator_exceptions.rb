module Exceptions
  module CalculatorExceptions
    class NegativeNumberError < StandardError
      def initialize(numbers)
        @numbers = numbers
      end

      def message
        "Negative numbers not allowed #{@numbers.join(', ')}"
      end
    end
  end
end
