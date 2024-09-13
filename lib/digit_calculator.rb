class DigitCalculator
    def sum_digits(number)
        return 'I only accept numbers' unless number.is_a?(Integer) || number.is_a?(Float)
        @number = number.abs.to_s.chars.map(&:to_i).sum
        sum_digits(@number) if @number.to_s.length > 1
        @number
    end
end