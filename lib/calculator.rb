# Calculator.add('1, 2')

class Calculator
  SPLIT_REGEX = /-?\d+/

  class << self
    def add(numbers)
      return 0 if numbers.empty?

      extracted_numbers = extract_numbers(numbers)
      extracted_numbers.sum
    end

    private

    def extract_numbers(num_string)
      num_string.scan(SPLIT_REGEX).map(&:to_i)
    end
  end
end
