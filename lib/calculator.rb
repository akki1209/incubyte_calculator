# Calculator.add('1, 2')

class Calculator
  SPLIT_REGEX = /-?\d+/

  class << self
    def add(numbers)
      return 0 if numbers.empty?

      extracted_numbers = extract_numbers(numbers)
      validate_numbers!(extracted_numbers)
      extracted_numbers.sum
    end

    private

    def validate_numbers!(numbers)
      validate_negative_numbers!(numbers)
    end

    def validate_negative_numbers!(numbers)
      negative_numbers = fetch_negative_numbers(numbers)
      return if negative_numbers.empty?

      raise Exceptions::CalculatorExceptions::NegativeNumberError, negative_numbers
    end

    def fetch_negative_numbers(numbers)
      numbers.select(&:negative?)
    end

    def extract_numbers(num_string)
      num_string.scan(SPLIT_REGEX).map(&:to_i)
    end
  end
end
