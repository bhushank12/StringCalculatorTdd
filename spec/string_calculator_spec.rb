require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe "Method #add" do
    context "when numbers string is empty" do
      it "returns 0" do
        calculator = StringCalculator.new("")
        expect(calculator.add).to eq(0)
      end
    end

    context "when numbers string contains negative numbers" do
      it "raises an exception with the negative numbers" do
        calculator = StringCalculator.new("1,-2,3,-4")
        expect { calculator.add }.to raise_error("Negative numbers not allowed -> -2, -4")
      end
    end
  end
end
