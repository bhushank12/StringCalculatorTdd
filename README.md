# StringCalculatorTdd
Ruby class to add numbers provided in string with delimiter

Ruby Class Calling -
  StringCalculator.new("1\n2,3").add => Return 6
  StringCalculator.new("1,\n").add => Invalid input cannot add only one number
  StringCalculator.new("//;\n1;2").add => Return 3
  StringCalculator.new("1,-2,3,-4").add => "Negative numbers not allowed -> -2, -4"
