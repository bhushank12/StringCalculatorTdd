require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe "Method #perform" do
    context "when numbers string is empty" do
      it "returns 0" do
        calculator = StringCalculator.new("")
        expect(calculator.perform).to eq(0)
      end
    end

    context "when numbers string contains one number" do
      it "returns invalid input error" do
        calculator = StringCalculator.new("5")
        expect(calculator.perform).to eq("Invalid input cannot add only one number")
      end
    end

    context "when numbers string contains two or more numbers" do
      it "returns the sum of the numbers" do
        calculator = StringCalculator.new("1,2,3")
        expect(calculator.perform).to eq(6)
      end
    end

    context "when numbers string contains custom delimiter(;)" do
      it "returns the sum of the numbers" do
        calculator = StringCalculator.new("//;\n1;2;3")
        expect(calculator.perform).to eq(6)
      end

      it "returns the sum of the numbers when numbers contains zeros" do
        calculator = StringCalculator.new("//;\n1;2;3;0;5;0")
        expect(calculator.perform).to eq(11)
      end
    end

    context "when numbers string contains custom delimiter(*)" do
      it "returns the product of the numbers" do
        calculator = StringCalculator.new("//*\n2*2*3")
        expect(calculator.perform).to eq(12)
      end

      it "returns the product of the numbers when numbers contains zeros" do
        calculator = StringCalculator.new("//*\n1*2*3*0*5*0")
        expect(calculator.perform).to eq(0)
      end
    end

    context "when numbers string contains negative numbers" do
      it "raises an exception with the negative numbers" do
        calculator = StringCalculator.new("1,-2,3,-4")
        expect { calculator.perform }.to raise_error("Negative numbers not allowed -> -2, -4")
      end
    end
  end
end
