class StringCalculator
  def initialize(numbers)
    @numbers = numbers
  end

  # Add multiple numbers provided with deliminator string
  def add
    return 0 if @numbers.empty?
    raise_negative_number
    return "Invalid input" if digits.count < 2
  end

  # Get custom deliminator if present otherwise return default i.e comma(,)
  private def deliminator
    @deliminator ||= custom_deliminator? ? @numbers[2] : ","
  end

  private def custom_deliminator?
    @numbers.start_with?("//")
  end

  private def digits
    @numbers.gsub("\n", deliminator).split(deliminator).map(&:to_i)
  end

  private def raise_negative_number
    raise "Negative numbers not allowed -> #{negatives.join(', ')}" if negatives.any?
  end

  private def negatives
    @negatives ||= digits.select { |digit| digit.negative? }
  end
end
