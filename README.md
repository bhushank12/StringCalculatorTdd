# StringCalculatorTdd

## Ruby class to add numbers provided in string with delimiter

### Ruby Class Calling

- `StringCalculator.new("1\n2,3").add` => Returns 6

- `StringCalculator.new("1,\n").add` => Returns "Invalid input cannot add only one number"

- `StringCalculator.new("//;\n1;2").add` => Returns 3

- `StringCalculator.new("1,-2,3,-4").add` => Returns "Negative numbers not allowed -> -2, -4"

- `StringCalculator.new("//*\n1*2*3").add` => Returns 6