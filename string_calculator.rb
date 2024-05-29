class StringCalculator
  def initialize(numbers)
    @numbers = numbers
  end

  # Add multiple numbers provided with delimiter string
  def perform
    return 0 if @numbers.empty?
    raise_negative_number
    return "Invalid input cannot add only one number" if digits.count < 2

    digits.sum
  end

  # Get custom delimiter if present otherwise return default i.e comma(,)
  private def delimiter
    @delimiter ||= custom_delimiter? ? @numbers[2] : ","
  end

  private def custom_delimiter?
    @numbers.start_with?("//")
  end

  private def digits
    delimiter_to_use = custom_delimiter? ? delimiter : ","

    @numbers.split("\n").last.split(delimiter_to_use).map(&:to_i)
  end

  private def raise_negative_number
    raise "Negative numbers not allowed -> #{negatives.join(', ')}" if negatives.any?
  end

  private def negatives
    @negatives ||= digits.select { |digit| digit.negative? }
  end
end
