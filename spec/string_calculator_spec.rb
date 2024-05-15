require_relative '../string_calculator'

describe "String Calculator" do
  context "Method #add" do
    it "returns 0" do
      expect(StringCalculator.add).to eq(0)
    end
  end
end
